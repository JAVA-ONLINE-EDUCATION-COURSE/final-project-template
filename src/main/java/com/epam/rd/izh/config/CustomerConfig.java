//package com.epam.rd.izh.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//import javax.sql.DataSource;
//
//@Configuration
//@EnableJdbcRepositories
//public class CustomerConfig {
//    @Bean
//    NamedParameterJdbcOperations operations() { //(3)
//        return new NamedParameterJdbcTemplate(dataSource());
//    }
//
//    @Bean
//    PlatformTransactionManager transactionManager() { //(4)
//        return new DataSourceTransactionManager(dataSource());
//    }
//
//    @Bean
//    DataSource dataSource(){ //(5)
//        return new EmbeddedDatabaseBuilder()
//                .generateUniqueName(true)
//                .setType(EmbeddedDatabaseType.HSQL)
//                .addScript("create-customer-schema.sql")
//                .build();
//    }
//}

//    EnableJdbcRepositories активирует автоматическое создание репозиториев. Для того, чтобы это работало, нужно предоставить несколько дополнительных бинов, для чего и потребуется остальная часть нашего класса конфигурации.
//        Т.к. конфигурационный класс расширяет JdbcConfiguration, несколько бинов будут добавлены в контекст автоматически. Их так же можно перекрыть, если нужно изменить поведение Spring Data JDBC. Но в данном примере мы оставим поведение по-умолчанию.
//        Очень важный компонент это NamedParameterJdbcOperations, который используется для выполнения запросов к базе.
//        Менеджер транзакций, строго говоря, не обязателен. Но без него не будет и поддержки транзакций, а это мало кому понравится, правда?
//        Spring Data JDBC не использует DataSource напрямую, но TransactionManager и NamedParameterJdbcOperation требуют его наличия в контексте, поэтому мы и определяем нужный бин.
