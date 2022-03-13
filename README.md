#THE PROJECT RUN CMD
 
   docker-compose -f docker-compose.yml up -d
   
#THE PROJECT SHUT DOWN CMD
  
   docker-compose -f docker-compose.yml down -v

#TO CONNECT PROJECT DOCKER CMD
   
   docker exec -it dockerProj_nest_app bash
