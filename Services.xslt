<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Студия красоты Boston</title>
        <meta charset="utf-8" ></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"></meta>
        <link rel="stylesheet" type="text/css" href="style/Services.css"></link>

      </head>
      <body>
        <header id="top">
          <div class="logo">Студия красоты "Boston"</div>
          <div class="links">
            <div>
                <div><a href="index.html">Главная</a></div>
              <div><a href="Services.html">Услуги</a></div>
              <div><a href="Shop.html">Магазин</a></div>
              <div><a href="About.html">О нас</a></div>
            </div>
            <div id="better">Меняйтесь к лучшему</div>
          </div>
        </header>

        <div class="main-block">
          <div class="big-img">
            <hr/>
            <div class="big-img-text1"><a href="Hair-extention.html">Наращивание волос</a></div>
            <div class="big-img-text2">Стоимость наращивания волос напрямую зависит от объёма ваших волос и от метода наращивания. В нашей студии возможно как полноценное наращивание волос, так и добавление прядей для объёма ваших волос.</div>
            <div class="big-img-img"><img src="img/dl.jpg"></img></div>
            <div class="big-img-tbl">
              <table border="1">
                <tr>
                  <td></td>
                  <td>Капсульное</td>
                  <td>Ленточное</td>
                </tr>
                <xsl:for-each select="SERVICES/HAIR-EXTENTION">
                  <tr>
                    <td>
                      <xsl:value-of select="LENGTH"></xsl:value-of>
                    </td>
                    <xsl:choose>
                      <xsl:when test="COST = 190">
                        <td bgcolor=" #89609F">от $<xsl:value-of select="COST"></xsl:value-of>(Акция на блонд!)
                      </td>
                    </xsl:when>
                    <xsl:when test="COST != 190">
                      <td>
                        от $<xsl:value-of select="COST"></xsl:value-of>
                      </td>
                    </xsl:when>
                  </xsl:choose>
                  <td>
                    от $<xsl:value-of select="LENT"></xsl:value-of>
                  </td>
                </tr>
              </xsl:for-each>
            </table>
            <div class="big-img-text3"><a href="Keratin.html">Кератиновое выпрямление(Цена зависит от состава)</a></div>
            <table border="1">
          <xsl:for-each select="SERVICES/KERATIN">
            <tr>
              <td>
                <xsl:value-of select="LENGTH"></xsl:value-of>
              </td>
              <xsl:choose>
                <xsl:when test="COST = 50">
                  <td bgcolor=" #89609F">$<xsl:value-of select="COST"></xsl:value-of>(Акция на любой состав!)</td>
                  </xsl:when>
                <xsl:when test="COST != 50">
                  <td>
                    от $<xsl:value-of select="COST"></xsl:value-of>
                  </td>
                </xsl:when>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
          </div>
        </div>

          <div class="before-after">
        <hr />
        <div class="before-after-text"><a href="Shielding.html">Экранирование и полировка волос</a></div>
        <table border="1">
          <tr>
            <td></td>
            <td>Экранирование</td>
            <td>Полировка</td>
          </tr>
          <xsl:for-each select="SERVICES/POlEKR">
            <tr>
              <td>
                <xsl:value-of select="LENGTH"></xsl:value-of>
              </td>
              <xsl:choose>
                <xsl:when test="COST = 7.5">
                  <td bgcolor=" #89609F">
                    $<xsl:value-of select="COST"></xsl:value-of>(Акция!)
                  </td>
                </xsl:when>
                <xsl:when test="COST != 7.5">
                  <td>
                    от $<xsl:value-of select="COST"></xsl:value-of>
                  </td>
                </xsl:when>
              </xsl:choose>
              <td>$<xsl:value-of select="POL"></xsl:value-of>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </div>

      <div class="before-after">
        <hr/>
        <div class="before-after-text"><a href="Hairstyles.html">Вечерние причёски</a></div>
          <div class="big-img-text2">Цена на создание вечерней причёски зависит от длины волос, используемых материалов и количества донорских прядей, которые вы пожелали добавить.
          Средняя стоимость на причёски приведена в таблице.
        </div>
        <table border="1" id="styles">
          <xsl:for-each select="SERVICES/PRICH">
            <tr>
              <td>
                <xsl:value-of select="LENGTH"></xsl:value-of>
              </td>
                  <td >
                    от $<xsl:value-of select="COST"></xsl:value-of>
                  </td>
            </tr>
          </xsl:for-each>
        </table>
          </div>
        </div>

        <footer>
          <div><a href="#top">Наверх</a></div>
          <div><a href="index.html">Boston</a></div>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
