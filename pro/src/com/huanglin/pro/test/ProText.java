package com.huanglin.pro.test;

import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.omg.PortableServer.LIFESPAN_POLICY_ID;

import com.huanglin.pro.action.ShoesAction;
import com.huanglin.pro.dao.AdmDao;
import com.huanglin.pro.dao.AdmDaoImpl;
import com.huanglin.pro.dao.CarDao;
import com.huanglin.pro.dao.CarDaoImpl;
import com.huanglin.pro.dao.MessageDao;
import com.huanglin.pro.dao.MessageDaoImpl;
import com.huanglin.pro.dao.NoticeDao;
import com.huanglin.pro.dao.NoticeDaoImpl;
import com.huanglin.pro.dao.OrderDao;
import com.huanglin.pro.dao.OrderDaoImpl;
import com.huanglin.pro.dao.ShoesDao;
import com.huanglin.pro.dao.ShoesDaoImpl;
import com.huanglin.pro.dao.UserDao;
import com.huanglin.pro.dao.UserDaoImpl;
import com.huanglin.pro.domain.Adm;
import com.huanglin.pro.domain.Car;
import com.huanglin.pro.domain.Message;
import com.huanglin.pro.domain.Notice;
import com.huanglin.pro.domain.Order;
import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;

public class ProText {
	public Session session = null;
	public SessionFactory fectory = null;

	@Before
	public void setUp() throws Exception {
		Configuration con = new Configuration();
		con.configure("/com/huanglin/pro/config/hibernate.cfg.xml");
		fectory = con.buildSessionFactory();
		session = fectory.openSession();
	} 

	@After
	public void tearDown() throws Exception {
		
		if(session.isOpen()){
			session.close();
		}
		if(!fectory.isClosed()){
			fectory.close();
		}
	}

	@Test
	
	public void test() {
//		Transaction tran = session.beginTransaction();
		UserDao ud = new UserDaoImpl();		
		User u = new User();

	}
	
	@Test
	public void admText(){
		AdmDao ado = new AdmDaoImpl();
		Adm adm = new Adm();
		adm = (Adm) ado.findById(2);
		System.out.println(adm.getAdmPhone());
		
	}
	
	@Test
	public void test2(){
		User u1 = new User();
		u1.setUserAddress("江西南昌");
		u1.setUserName("叶子");
		u1.setUserPhone("132426322523");
		u1.setUserRealName("张瑜");
		u1.setUserDate(new Date());
//		session.save(u1);
//		u1.setUserId(3332);
		
		Car car = new Car();
//		
		car.setcColor("f");
//		
		car.setcName("op");
		car.setcNumb(1);
		car.setcPrice(252.1);
		car.setcSize(43);
		car.setcStyle("r");
		car.setcUrl("sqaa");
		car.setcId(1);
		
		
//		
		
		u1.getCart().add(car);
		car.setUser(u1);
		
		
//		UserDao ud = new UserDaoImpl();
//		ud.addUser(u1);
//		User us = session.get(User.class, 0);
//		Set<Car> sus = us.getCart();
//		
//		for(Iterator it = sus.iterator();it.hasNext();){
//			Car cr = (Car)it.next();
//			System.out.println(cr.getcName());
//		}
		
		
		
		
		Transaction tran = session.beginTransaction();
		try {
			session.save(u1);
//			session.save(car);
			tran.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			tran.rollback();
		}
		
		
		
	}
	
	@Test
	public void carText(){
		Car car = new Car();
		car.setcColor("a");
		car.setcName("aaa");
		car.setcNumb(2);
		car.setcPrice(333.2);
		car.setcSize(42);
		car.setcStyle("雪地靴");
		car.setcUrl("/user");
		CarDao cd = new CarDaoImpl();
		cd.addCarShoes(car);
	}
	
	@Test
	public void shoesTest(){
//		Shoes shoes = new Shoes();
//		shoes.setNub(100);
//		shoes.setShoesBrand("lilin");
//		shoes.setShoesColor("blue");
//	    shoes.setShoesId(1);
//		shoes.setShoesPrise(222.5);
//		shoes.setShoesSex('m');
//		shoes.setShoesUrl("img/b-2.jpg");
//		shoes.setShoesStyle("sport");
//		shoes.setShoesSize(42);
//		shoes.setShoesOrign("China");
//		shoes.setShoesName("lilinshoes");
//		
//		ShoesDao sd = new ShoesDaoImpl();
		
		
//		Transaction tran = session.beginTransaction();
//		try {
//			session.save(shoes);
//			tran.commit();
//		} catch (HibernateException e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			tran.rollback();
//		}
//		
//	}
		Adm a = new Adm();
		AdmDao ad = new AdmDaoImpl();
		a = ad.findByName("root1");
		System.out.println(a.getAdmPhone());
		
		
	}
	
	@Test
	public void notice(){
		NoticeDao nd = new NoticeDaoImpl();
		
		List<Notice> listno = (List<Notice>) nd.listNotice();
		for(Notice n : listno){
			System.out.println(n.getId());
		}
		
	}
	@Test
	public  void picture(){
		NoticeDao nd = new NoticeDaoImpl();
		
		List<Notice> listno = (List<Notice>) nd.listAllNotice();
		for(Notice n : listno){
			System.out.println(n.getId());
		}
		
	}
	
	@Test
	public void orderTester(){
		
		User u = new User();
		u.setUserId(0);
		
		OrderDao od = new OrderDaoImpl();
		Order o = new Order();
		o.setFkReceiver(1);
		o.setFkUser(0);
		o.setOrcolor("a");
	
		o.setOrName("Nike");
		o.setOrNumber(1);
		o.setOrPayState('a');
		o.setOrprice(344);
		o.setOrreceiverState('a');
		o.setOrUrl("sdf");
		o.setOrsize(34);
	
		u.getOrder().add(o);
		o.setUser(u);
		od.addOrder(o);
		
	}
	@Test
	public void userTest(){
		ShoesAction sa =new ShoesAction();
	 ShoesDao Sd =new ShoesDaoImpl();
	 Shoes s = Sd.findById(234);
	 System.out.println(s.getShoesColor());
	 List<Shoes> slist = null;
	 slist.add(s);
	
	}
	
	@Test
	public void Mesage(){
		List<Message> lism = null;
		MessageDao md = new MessageDaoImpl();
		lism = md.listMessage();
		for(Message m : lism){
			System.out.println(m.getmRInfo());
		}
	}

}
