package com.epam.rd.izh;

import com.epam.rd.izh.entity.AuthorizedUser;
//import com.epam.rd.izh.repository.UserRepository;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import java.time.LocalDate;
//
//@RunWith(SpringRunner.class)
//@Transactional
//@ContextConfiguration(classes = CustomerConfig.class)
//public class CustomerRepositoryTest {
//    @Autowired
//    UserRepository userRepository;
//
//    @Test
//    public void createSimpleCustomer() {
//
//        AuthorizedUser customer = new AuthorizedUser();
//        customer.dob = LocalDate.of(1904, 5, 14);
//        customer.firstName = "Albert";
//
//        Customer saved = customerRepo.save(customer);
//
//        assertThat(saved.id).isNotNull();
//
//        saved.firstName = "Hans Albert";
//
//        customerRepo.save(saved);
//
//        Optional<Customer> reloaded = customerRepo.findById(saved.id);
//
//        assertThat(reloaded).isNotEmpty();
//
//        assertThat(reloaded.get().firstName).isEqualTo("Hans Albert");
//    }
//
//}
