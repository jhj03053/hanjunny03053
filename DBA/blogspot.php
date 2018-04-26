
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="../style.css"/>
        <title>Blog Post Creator</title>
    </head>
    <body>
    <h1><a href="upload.php">Review Page</a></h1>
        <div id="contentarea">
            <div id="innercontentarea">
                <h1>Blog Post Creator</h1>
			<form action="upload.php" method="post">
                        <h3> Title </h3>
                        <p>
                            <input type="text" name="title" id="title"/>
                        </p>
                        <h3> Content </h3>
                        <textarea name="content" rows="20"></textarea>
                        <p>
                            <input type="submit" name="btn_submit" value="Save"/>
                        </p>
                    </form>

                    <form action ="MDBst.php" method="post">
                        <h3> MDB Usages </h3>
                        <input type="submit" name="btn_submit" value="submit"/>
                    </form>
                    <form action ="mysqlbackup.php" method="post">
                        <h3> mysql back up  </h3>
                        <input type="submit" name="btn_submit" value="submit"/>
                    </form>
                    <form action ="mysqlstatue.php" method="post">
                        <h3> MYSQL DB statue  </h3>
                        <input type="submit" name="btn_submit" value="submit"/>
                    </form>
                    <form action ="Mongostatue.php" method="post">
                        <h3> Mongo DB statue  </h3>
                        <input type="submit" name="btn_submit" value="submit"/>
                    </form>

                    <form action ="Mongobackup.php" method="post">
                        <h3> MongoDB back up  </h3>
                        <input type="submit" name="btn_submit" value="submit"/>
                    </form>

            </div> <!-- End of div innercontentarea -->
        </div> <!-- End of div contentarea -->
    </body>
</html>


