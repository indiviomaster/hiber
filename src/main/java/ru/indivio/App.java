package ru.indivio;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;




public class App
{
    public static void main( String[] args )
    {

        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(User.class)
                .addAnnotatedClass(Product.class)
                //.addAnnotatedClass(Shoping.class)
                .buildSessionFactory();

        Session session = null;

        // READ User 1 Product 1
        session = factory.getCurrentSession();
        session.beginTransaction();
        User user = session.get(User.class, 1);
        session.getTransaction().commit();
        System.out.println(user);

//        session = factory.getCurrentSession();
//        session.beginTransaction();
//        Product product = session.get(Product.class, 1);
//        session.getTransaction().commit();
//        System.out.println(product);


// ADD USER Nikola
//        try {
//
//            session = factory.getCurrentSession();
//            User tmpUser = new User();
//            tmpUser.setName("Nikola");
//            session.beginTransaction();
//            session.save(tmpUser);
//            session.getTransaction().commit();
//        } finally {
//            factory.close();
//            session.close();
//        }

//        session = factory.getCurrentSession();
//        session.beginTransaction();
//        List<User> users = session.createQuery("from User").getResultList();
//        System.out.println(users);
//        session.getTransaction().commit();

//            Select from shoping table by User
//        session = factory.getCurrentSession();
//        session.beginTransaction();
//        List<User> qs = session.createQuery("from Shoping s where s.userId = 1 ").getResultList();
//        System.out.println(qs);
//        session.getTransaction().commit();

//            Select from shoping table by User
//        session = factory.getCurrentSession();
//        session.beginTransaction();
//        List<User> qs = session.createQuery("from Shoping s where s.productId = 1 ").getResultList();
//        System.out.println(qs);
//        session.getTransaction().commit();

//            UPDATE User
//            session = factory.getCurrentSession();
//            session.beginTransaction();
//            User user = session.get(User.class, 1);
//            user.setName("NJ");
//            session.getTransaction().commit();
//            System.out.println(user);

//DELETE
//            session = factory.getCurrentSession();
//            session.beginTransaction();
//            User user = session.get(User.class, 1);
//            session.delete(user);
//            session.getTransaction().commit();


    }
}
