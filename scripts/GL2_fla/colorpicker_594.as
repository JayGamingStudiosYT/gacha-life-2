package GL2_fla
{
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24785")]
   public dynamic class colorpicker_594 extends MovieClip
   {
      
      public var ccolor:MovieClip;
      
      public var copyani:MovieClip;
      
      public var copybt:MovieClip;
      
      public var fadecol:MovieClip;
      
      public var favblocker:MovieClip;
      
      public var favbt:MovieClip;
      
      public var favleftbt:MovieClip;
      
      public var favrightbt:MovieClip;
      
      public var favselectgo:MovieClip;
      
      public var favsetx:TextField;
      
      public var fcol1:MovieClip;
      
      public var fcol10:MovieClip;
      
      public var fcol11:MovieClip;
      
      public var fcol12:MovieClip;
      
      public var fcol13:MovieClip;
      
      public var fcol14:MovieClip;
      
      public var fcol15:MovieClip;
      
      public var fcol16:MovieClip;
      
      public var fcol17:MovieClip;
      
      public var fcol18:MovieClip;
      
      public var fcol19:MovieClip;
      
      public var fcol2:MovieClip;
      
      public var fcol20:MovieClip;
      
      public var fcol21:MovieClip;
      
      public var fcol22:MovieClip;
      
      public var fcol23:MovieClip;
      
      public var fcol24:MovieClip;
      
      public var fcol3:MovieClip;
      
      public var fcol4:MovieClip;
      
      public var fcol5:MovieClip;
      
      public var fcol6:MovieClip;
      
      public var fcol7:MovieClip;
      
      public var fcol8:MovieClip;
      
      public var fcol9:MovieClip;
      
      public var hexx:TextField;
      
      public var hshow:MovieClip;
      
      public var inputbt:MovieClip;
      
      public var lightx:MovieClip;
      
      public var mc1:MovieClip;
      
      public var mc2:MovieClip;
      
      public var mc3:MovieClip;
      
      public var rcol1:MovieClip;
      
      public var rcol10:MovieClip;
      
      public var rcol11:MovieClip;
      
      public var rcol12:MovieClip;
      
      public var rcol13:MovieClip;
      
      public var rcol14:MovieClip;
      
      public var rcol15:MovieClip;
      
      public var rcol16:MovieClip;
      
      public var rcol17:MovieClip;
      
      public var rcol18:MovieClip;
      
      public var rcol19:MovieClip;
      
      public var rcol2:MovieClip;
      
      public var rcol20:MovieClip;
      
      public var rcol3:MovieClip;
      
      public var rcol4:MovieClip;
      
      public var rcol5:MovieClip;
      
      public var rcol6:MovieClip;
      
      public var rcol7:MovieClip;
      
      public var rcol8:MovieClip;
      
      public var rcol9:MovieClip;
      
      public var recblocker:MovieClip;
      
      public var rgbcol:MovieClip;
      
      public var selx:MovieClip;
      
      public var mcpick:*;
      
      public var xcolorpick:*;
      
      public var favon:*;
      
      public function colorpicker_594()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function favbtx(evt:MouseEvent) : void
      {
         if(this.favon == 1)
         {
            this.favselectgo.gotoAndStop(3);
            this.favon = 2;
         }
         else
         {
            this.favselectgo.gotoAndStop(2);
            this.favon = 1;
         }
      }
      
      public function copybtx(evt:MouseEvent) : void
      {
         System.setClipboard(this.hexx.text.substr(1));
         this.copyani.gotoAndPlay(2);
      }
      
      public function inputbtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
         MovieClip(root).typingpick = 13;
         MovieClip(root).typenamego.gotoAndStop(3);
      }
      
      public function favleftbtx(event:MouseEvent) : void
      {
         --MovieClip(root).favset;
         if(MovieClip(root).favset < 1)
         {
            MovieClip(root).favset = 15;
         }
         this.showcolors();
         this.selx.visible = false;
      }
      
      public function favrightbtx(event:MouseEvent) : void
      {
         MovieClip(root).favset = MovieClip(root).favset + 1;
         if(MovieClip(root).favset > 15)
         {
            MovieClip(root).favset = 1;
         }
         this.showcolors();
         this.selx.visible = false;
      }
      
      public function recblockerx(event:MouseEvent) : void
      {
         MovieClip(root).docolor = 2;
         MovieClip(root).doskew = 1;
         for(var i:* = 1; i <= 20; i++)
         {
            if(this["rcol" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               this.xcolorpick = MovieClip(root)["rcolor" + i];
               this.changehexcol();
               this.selx.visible = true;
               this.selx.x = this["rcol" + i].x;
               this.selx.y = this["rcol" + i].y;
            }
         }
      }
      
      public function favblockerx(event:MouseEvent) : void
      {
         MovieClip(root).docolor = 2;
         MovieClip(root).doskew = 1;
         for(var i:* = 1; i <= 24; i++)
         {
            if(this["fcol" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               if(this.favon == 1)
               {
                  this.xcolorpick = MovieClip(root)["fcolor" + MovieClip(root).favset + "x" + i];
                  this.changehexcol();
                  this.selx.visible = true;
                  this.selx.x = this["fcol" + i].x;
                  this.selx.y = this["fcol" + i].y;
               }
               else
               {
                  MovieClip(root)["fcolor" + MovieClip(root).favset + "x" + i] = this.hexx.text.substr(1);
                  this.selx.x = this["fcol" + i].x;
                  this.selx.y = this["fcol" + i].y;
                  this.showcolors();
                  this.favselectgo.gotoAndStop(2);
                  this.favon = 1;
               }
            }
         }
      }
      
      public function showcolors() : void
      {
         var i:* = undefined;
         this.favsetx.text = MovieClip(root).favset + "/15";
         for(i = 1; i <= 20; i++)
         {
            MovieClip(root).reccolor.setTint("0x" + MovieClip(root)["rcolor" + i],1);
            this["rcol" + i].transform.colorTransform = MovieClip(root).reccolor;
         }
         for(i = 1; i <= 24; i++)
         {
            MovieClip(root).reccolor.setTint("0x" + MovieClip(root)["fcolor" + MovieClip(root).favset + "x" + i],1);
            this["fcol" + i].transform.colorTransform = MovieClip(root).reccolor;
         }
      }
      
      public function startcol() : void
      {
         if(MovieClip(root).choosecolor == 1)
         {
            this.xcolorpick = MovieClip(root).skincolx1;
         }
         else if(MovieClip(root).choosecolor == 2)
         {
            this.xcolorpick = MovieClip(root).skincolx2;
         }
         else if(MovieClip(root).choosecolor == 3)
         {
            this.xcolorpick = MovieClip(root).skincolx3;
         }
         else if(MovieClip(root).choosecolor == 4)
         {
            this.xcolorpick = MovieClip(root).shadowcolx;
         }
         else if(MovieClip(root).choosecolor == 5)
         {
            this.xcolorpick = MovieClip(root).tintcolx;
         }
         else if(MovieClip(root).choosecolor == 6)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx1;
         }
         else if(MovieClip(root).choosecolor == 7)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx2;
         }
         else if(MovieClip(root).choosecolor == 8)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx3;
         }
         else if(MovieClip(root).choosecolor == 9)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx4;
         }
         else if(MovieClip(root).choosecolor == 10)
         {
            this.xcolorpick = MovieClip(root).fronthaircolx1;
         }
         else if(MovieClip(root).choosecolor == 11)
         {
            this.xcolorpick = MovieClip(root).fronthaircolx2;
         }
         else if(MovieClip(root).choosecolor == 12)
         {
            this.xcolorpick = MovieClip(root).fronthaircolx3;
         }
         else if(MovieClip(root).choosecolor == 13)
         {
            this.xcolorpick = MovieClip(root).fronthaircolx4;
         }
         else if(MovieClip(root).choosecolor == 14)
         {
            this.xcolorpick = MovieClip(root).sidehair1colx1;
         }
         else if(MovieClip(root).choosecolor == 15)
         {
            this.xcolorpick = MovieClip(root).sidehair1colx2;
         }
         else if(MovieClip(root).choosecolor == 16)
         {
            this.xcolorpick = MovieClip(root).sidehair1colx3;
         }
         else if(MovieClip(root).choosecolor == 17)
         {
            this.xcolorpick = MovieClip(root).sidehair1colx4;
         }
         else if(MovieClip(root).choosecolor == 18)
         {
            this.xcolorpick = MovieClip(root).sidehair2colx1;
         }
         else if(MovieClip(root).choosecolor == 19)
         {
            this.xcolorpick = MovieClip(root).sidehair2colx2;
         }
         else if(MovieClip(root).choosecolor == 20)
         {
            this.xcolorpick = MovieClip(root).sidehair2colx3;
         }
         else if(MovieClip(root).choosecolor == 21)
         {
            this.xcolorpick = MovieClip(root).sidehair2colx4;
         }
         else if(MovieClip(root).choosecolor == 22)
         {
            this.xcolorpick = MovieClip(root).ahogecolx1;
         }
         else if(MovieClip(root).choosecolor == 23)
         {
            this.xcolorpick = MovieClip(root).ahogecolx2;
         }
         else if(MovieClip(root).choosecolor == 24)
         {
            this.xcolorpick = MovieClip(root).ahogecolx3;
         }
         else if(MovieClip(root).choosecolor == 25)
         {
            this.xcolorpick = MovieClip(root).ahogecolx4;
         }
         else if(MovieClip(root).choosecolor == 26)
         {
            this.xcolorpick = MovieClip(root).backhaircolx1;
         }
         else if(MovieClip(root).choosecolor == 27)
         {
            this.xcolorpick = MovieClip(root).backhaircolx2;
         }
         else if(MovieClip(root).choosecolor == 28)
         {
            this.xcolorpick = MovieClip(root).backhaircolx3;
         }
         else if(MovieClip(root).choosecolor == 29)
         {
            this.xcolorpick = MovieClip(root).backhaircolx4;
         }
         else if(MovieClip(root).choosecolor == 30)
         {
            this.xcolorpick = MovieClip(root).ponytail1colx1;
         }
         else if(MovieClip(root).choosecolor == 31)
         {
            this.xcolorpick = MovieClip(root).ponytail1colx2;
         }
         else if(MovieClip(root).choosecolor == 32)
         {
            this.xcolorpick = MovieClip(root).ponytail1colx3;
         }
         else if(MovieClip(root).choosecolor == 33)
         {
            this.xcolorpick = MovieClip(root).ponytail1colx4;
         }
         else if(MovieClip(root).choosecolor == 34)
         {
            this.xcolorpick = MovieClip(root).ponytail2colx1;
         }
         else if(MovieClip(root).choosecolor == 35)
         {
            this.xcolorpick = MovieClip(root).ponytail2colx2;
         }
         else if(MovieClip(root).choosecolor == 36)
         {
            this.xcolorpick = MovieClip(root).ponytail2colx3;
         }
         else if(MovieClip(root).choosecolor == 37)
         {
            this.xcolorpick = MovieClip(root).ponytail2colx4;
         }
         else if(MovieClip(root).choosecolor == 38)
         {
            this.xcolorpick = MovieClip(root).hairlightcolx1;
         }
         else if(MovieClip(root).choosecolor == 39)
         {
            this.xcolorpick = MovieClip(root).hairlightcolx2;
         }
         else if(MovieClip(root).choosecolor == 40)
         {
            this.xcolorpick = MovieClip(root).hairacccolx1;
         }
         else if(MovieClip(root).choosecolor == 41)
         {
            this.xcolorpick = MovieClip(root).hairacccolx2;
         }
         else if(MovieClip(root).choosecolor == 42)
         {
            this.xcolorpick = MovieClip(root).hairacccolx3;
         }
         else if(MovieClip(root).choosecolor == 43)
         {
            this.xcolorpick = MovieClip(root).hairacccolx4;
         }
         else if(MovieClip(root).choosecolor == 44)
         {
            this.xcolorpick = MovieClip(root).hairacccolx5;
         }
         else if(MovieClip(root).choosecolor == 46)
         {
            this.xcolorpick = MovieClip(root).eyeshape1colx1;
         }
         else if(MovieClip(root).choosecolor == 47)
         {
            this.xcolorpick = MovieClip(root).eyeshape1colx2;
         }
         else if(MovieClip(root).choosecolor == 48)
         {
            this.xcolorpick = MovieClip(root).eyeshape1colx3;
         }
         else if(MovieClip(root).choosecolor == 49)
         {
            this.xcolorpick = MovieClip(root).eyeshape1colx4;
         }
         else if(MovieClip(root).choosecolor == 50)
         {
            this.xcolorpick = MovieClip(root).eyeshape2colx1;
         }
         else if(MovieClip(root).choosecolor == 51)
         {
            this.xcolorpick = MovieClip(root).eyeshape2colx2;
         }
         else if(MovieClip(root).choosecolor == 52)
         {
            this.xcolorpick = MovieClip(root).eyeshape2colx3;
         }
         else if(MovieClip(root).choosecolor == 53)
         {
            this.xcolorpick = MovieClip(root).eyeshape2colx4;
         }
         else if(MovieClip(root).choosecolor == 54)
         {
            this.xcolorpick = MovieClip(root).eyeball1colx1;
         }
         else if(MovieClip(root).choosecolor == 55)
         {
            this.xcolorpick = MovieClip(root).eyeball1colx2;
         }
         else if(MovieClip(root).choosecolor == 56)
         {
            this.xcolorpick = MovieClip(root).eyeball1colx3;
         }
         else if(MovieClip(root).choosecolor == 57)
         {
            this.xcolorpick = MovieClip(root).eyeball1colx4;
         }
         else if(MovieClip(root).choosecolor == 58)
         {
            this.xcolorpick = MovieClip(root).eyeball2colx1;
         }
         else if(MovieClip(root).choosecolor == 59)
         {
            this.xcolorpick = MovieClip(root).eyeball2colx2;
         }
         else if(MovieClip(root).choosecolor == 60)
         {
            this.xcolorpick = MovieClip(root).eyeball2colx3;
         }
         else if(MovieClip(root).choosecolor == 61)
         {
            this.xcolorpick = MovieClip(root).eyeball2colx4;
         }
         else if(MovieClip(root).choosecolor == 62)
         {
            this.xcolorpick = MovieClip(root).pupil1colx1;
         }
         else if(MovieClip(root).choosecolor == 63)
         {
            this.xcolorpick = MovieClip(root).pupil1colx2;
         }
         else if(MovieClip(root).choosecolor == 64)
         {
            this.xcolorpick = MovieClip(root).pupil2colx1;
         }
         else if(MovieClip(root).choosecolor == 65)
         {
            this.xcolorpick = MovieClip(root).pupil2colx2;
         }
         else if(MovieClip(root).choosecolor == 66)
         {
            this.xcolorpick = MovieClip(root).eyelightcolx1;
         }
         else if(MovieClip(root).choosecolor == 67)
         {
            this.xcolorpick = MovieClip(root).eyelightcolx2;
         }
         else if(MovieClip(root).choosecolor == 68)
         {
            this.xcolorpick = MovieClip(root).eyebrow1colx1;
         }
         else if(MovieClip(root).choosecolor == 69)
         {
            this.xcolorpick = MovieClip(root).eyebrow1colx2;
         }
         else if(MovieClip(root).choosecolor == 70)
         {
            this.xcolorpick = MovieClip(root).eyebrow2colx1;
         }
         else if(MovieClip(root).choosecolor == 71)
         {
            this.xcolorpick = MovieClip(root).eyebrow2colx2;
         }
         else if(MovieClip(root).choosecolor == 72)
         {
            this.xcolorpick = MovieClip(root).nosecolx1;
         }
         else if(MovieClip(root).choosecolor == 73)
         {
            this.xcolorpick = MovieClip(root).nosecolx2;
         }
         else if(MovieClip(root).choosecolor == 74)
         {
            this.xcolorpick = MovieClip(root).mouthcolx1;
         }
         else if(MovieClip(root).choosecolor == 75)
         {
            this.xcolorpick = MovieClip(root).mouthcolx2;
         }
         else if(MovieClip(root).choosecolor == 76)
         {
            this.xcolorpick = MovieClip(root).mouthcolx3;
         }
         else if(MovieClip(root).choosecolor == 77)
         {
            this.xcolorpick = MovieClip(root).mouthcolx4;
         }
         else if(MovieClip(root).choosecolor == 78)
         {
            this.xcolorpick = MovieClip(root).hat1colx1;
         }
         else if(MovieClip(root).choosecolor == 79)
         {
            this.xcolorpick = MovieClip(root).hat1colx2;
         }
         else if(MovieClip(root).choosecolor == 80)
         {
            this.xcolorpick = MovieClip(root).hat1colx3;
         }
         else if(MovieClip(root).choosecolor == 81)
         {
            this.xcolorpick = MovieClip(root).hat1colx4;
         }
         else if(MovieClip(root).choosecolor == 82)
         {
            this.xcolorpick = MovieClip(root).hat2colx1;
         }
         else if(MovieClip(root).choosecolor == 83)
         {
            this.xcolorpick = MovieClip(root).hat2colx2;
         }
         else if(MovieClip(root).choosecolor == 84)
         {
            this.xcolorpick = MovieClip(root).hat2colx3;
         }
         else if(MovieClip(root).choosecolor == 85)
         {
            this.xcolorpick = MovieClip(root).hat2colx4;
         }
         else if(MovieClip(root).choosecolor == 86)
         {
            this.xcolorpick = MovieClip(root).other1colx1;
         }
         else if(MovieClip(root).choosecolor == 87)
         {
            this.xcolorpick = MovieClip(root).other1colx2;
         }
         else if(MovieClip(root).choosecolor == 88)
         {
            this.xcolorpick = MovieClip(root).other1colx3;
         }
         else if(MovieClip(root).choosecolor == 89)
         {
            this.xcolorpick = MovieClip(root).other1colx4;
         }
         else if(MovieClip(root).choosecolor == 90)
         {
            this.xcolorpick = MovieClip(root).other2colx1;
         }
         else if(MovieClip(root).choosecolor == 91)
         {
            this.xcolorpick = MovieClip(root).other2colx2;
         }
         else if(MovieClip(root).choosecolor == 92)
         {
            this.xcolorpick = MovieClip(root).other2colx3;
         }
         else if(MovieClip(root).choosecolor == 93)
         {
            this.xcolorpick = MovieClip(root).other2colx4;
         }
         else if(MovieClip(root).choosecolor == 94)
         {
            this.xcolorpick = MovieClip(root).other3colx1;
         }
         else if(MovieClip(root).choosecolor == 95)
         {
            this.xcolorpick = MovieClip(root).other3colx2;
         }
         else if(MovieClip(root).choosecolor == 96)
         {
            this.xcolorpick = MovieClip(root).other3colx3;
         }
         else if(MovieClip(root).choosecolor == 97)
         {
            this.xcolorpick = MovieClip(root).other3colx4;
         }
         else if(MovieClip(root).choosecolor == 98)
         {
            this.xcolorpick = MovieClip(root).other4colx1;
         }
         else if(MovieClip(root).choosecolor == 99)
         {
            this.xcolorpick = MovieClip(root).other4colx2;
         }
         else if(MovieClip(root).choosecolor == 100)
         {
            this.xcolorpick = MovieClip(root).other4colx3;
         }
         else if(MovieClip(root).choosecolor == 101)
         {
            this.xcolorpick = MovieClip(root).other4colx4;
         }
         else if(MovieClip(root).choosecolor == 102)
         {
            this.xcolorpick = MovieClip(root).glasses1colx1;
         }
         else if(MovieClip(root).choosecolor == 103)
         {
            this.xcolorpick = MovieClip(root).glasses1colx2;
         }
         else if(MovieClip(root).choosecolor == 104)
         {
            this.xcolorpick = MovieClip(root).glasses1colx3;
         }
         else if(MovieClip(root).choosecolor == 105)
         {
            this.xcolorpick = MovieClip(root).glasses1colx4;
         }
         else if(MovieClip(root).choosecolor == 106)
         {
            this.xcolorpick = MovieClip(root).glasses2colx1;
         }
         else if(MovieClip(root).choosecolor == 107)
         {
            this.xcolorpick = MovieClip(root).glasses2colx2;
         }
         else if(MovieClip(root).choosecolor == 108)
         {
            this.xcolorpick = MovieClip(root).glasses2colx3;
         }
         else if(MovieClip(root).choosecolor == 109)
         {
            this.xcolorpick = MovieClip(root).glasses2colx4;
         }
         else if(MovieClip(root).choosecolor == 110)
         {
            this.xcolorpick = MovieClip(root).faceacc1colx1;
         }
         else if(MovieClip(root).choosecolor == 111)
         {
            this.xcolorpick = MovieClip(root).faceacc1colx2;
         }
         else if(MovieClip(root).choosecolor == 112)
         {
            this.xcolorpick = MovieClip(root).faceacc1colx3;
         }
         else if(MovieClip(root).choosecolor == 113)
         {
            this.xcolorpick = MovieClip(root).faceacc1colx4;
         }
         else if(MovieClip(root).choosecolor == 114)
         {
            this.xcolorpick = MovieClip(root).faceacc2colx1;
         }
         else if(MovieClip(root).choosecolor == 115)
         {
            this.xcolorpick = MovieClip(root).faceacc2colx2;
         }
         else if(MovieClip(root).choosecolor == 116)
         {
            this.xcolorpick = MovieClip(root).faceacc2colx3;
         }
         else if(MovieClip(root).choosecolor == 117)
         {
            this.xcolorpick = MovieClip(root).faceacc2colx4;
         }
         else if(MovieClip(root).choosecolor == 118)
         {
            this.xcolorpick = MovieClip(root).scarf1colx1;
         }
         else if(MovieClip(root).choosecolor == 119)
         {
            this.xcolorpick = MovieClip(root).scarf1colx2;
         }
         else if(MovieClip(root).choosecolor == 120)
         {
            this.xcolorpick = MovieClip(root).scarf1colx3;
         }
         else if(MovieClip(root).choosecolor == 121)
         {
            this.xcolorpick = MovieClip(root).scarf1colx4;
         }
         else if(MovieClip(root).choosecolor == 122)
         {
            this.xcolorpick = MovieClip(root).scarf2colx1;
         }
         else if(MovieClip(root).choosecolor == 123)
         {
            this.xcolorpick = MovieClip(root).scarf2colx2;
         }
         else if(MovieClip(root).choosecolor == 124)
         {
            this.xcolorpick = MovieClip(root).scarf2colx3;
         }
         else if(MovieClip(root).choosecolor == 125)
         {
            this.xcolorpick = MovieClip(root).scarf2colx4;
         }
         else if(MovieClip(root).choosecolor == 126)
         {
            this.xcolorpick = MovieClip(root).shirtcolx1;
         }
         else if(MovieClip(root).choosecolor == 127)
         {
            this.xcolorpick = MovieClip(root).shirtcolx2;
         }
         else if(MovieClip(root).choosecolor == 128)
         {
            this.xcolorpick = MovieClip(root).shirtcolx3;
         }
         else if(MovieClip(root).choosecolor == 129)
         {
            this.xcolorpick = MovieClip(root).shirtcolx4;
         }
         else if(MovieClip(root).choosecolor == 130)
         {
            this.xcolorpick = MovieClip(root).shirtlengthcolx1;
         }
         else if(MovieClip(root).choosecolor == 131)
         {
            this.xcolorpick = MovieClip(root).shirtlengthcolx2;
         }
         else if(MovieClip(root).choosecolor == 132)
         {
            this.xcolorpick = MovieClip(root).shirtlengthcolx3;
         }
         else if(MovieClip(root).choosecolor == 133)
         {
            this.xcolorpick = MovieClip(root).shirtlengthcolx4;
         }
         else if(MovieClip(root).choosecolor == 134)
         {
            this.xcolorpick = MovieClip(root).jacketcolx1;
         }
         else if(MovieClip(root).choosecolor == 135)
         {
            this.xcolorpick = MovieClip(root).jacketcolx2;
         }
         else if(MovieClip(root).choosecolor == 136)
         {
            this.xcolorpick = MovieClip(root).jacketcolx3;
         }
         else if(MovieClip(root).choosecolor == 137)
         {
            this.xcolorpick = MovieClip(root).jacketcolx4;
         }
         else if(MovieClip(root).choosecolor == 138)
         {
            this.xcolorpick = MovieClip(root).jacketlengthcolx1;
         }
         else if(MovieClip(root).choosecolor == 139)
         {
            this.xcolorpick = MovieClip(root).jacketlengthcolx2;
         }
         else if(MovieClip(root).choosecolor == 140)
         {
            this.xcolorpick = MovieClip(root).jacketlengthcolx3;
         }
         else if(MovieClip(root).choosecolor == 141)
         {
            this.xcolorpick = MovieClip(root).jacketlengthcolx4;
         }
         else if(MovieClip(root).choosecolor == 142)
         {
            this.xcolorpick = MovieClip(root).sleeve1colx1;
         }
         else if(MovieClip(root).choosecolor == 143)
         {
            this.xcolorpick = MovieClip(root).sleeve1colx2;
         }
         else if(MovieClip(root).choosecolor == 144)
         {
            this.xcolorpick = MovieClip(root).sleeve1colx3;
         }
         else if(MovieClip(root).choosecolor == 145)
         {
            this.xcolorpick = MovieClip(root).sleeve1colx4;
         }
         else if(MovieClip(root).choosecolor == 146)
         {
            this.xcolorpick = MovieClip(root).sleeve2colx1;
         }
         else if(MovieClip(root).choosecolor == 147)
         {
            this.xcolorpick = MovieClip(root).sleeve2colx2;
         }
         else if(MovieClip(root).choosecolor == 148)
         {
            this.xcolorpick = MovieClip(root).sleeve2colx3;
         }
         else if(MovieClip(root).choosecolor == 149)
         {
            this.xcolorpick = MovieClip(root).sleeve2colx4;
         }
         else if(MovieClip(root).choosecolor == 150)
         {
            this.xcolorpick = MovieClip(root).glove1colx1;
         }
         else if(MovieClip(root).choosecolor == 151)
         {
            this.xcolorpick = MovieClip(root).glove1colx2;
         }
         else if(MovieClip(root).choosecolor == 152)
         {
            this.xcolorpick = MovieClip(root).glove1colx3;
         }
         else if(MovieClip(root).choosecolor == 153)
         {
            this.xcolorpick = MovieClip(root).glove1colx4;
         }
         else if(MovieClip(root).choosecolor == 154)
         {
            this.xcolorpick = MovieClip(root).glove2colx1;
         }
         else if(MovieClip(root).choosecolor == 155)
         {
            this.xcolorpick = MovieClip(root).glove2colx2;
         }
         else if(MovieClip(root).choosecolor == 156)
         {
            this.xcolorpick = MovieClip(root).glove2colx3;
         }
         else if(MovieClip(root).choosecolor == 157)
         {
            this.xcolorpick = MovieClip(root).glove2colx4;
         }
         else if(MovieClip(root).choosecolor == 158)
         {
            this.xcolorpick = MovieClip(root).wrist1colx1;
         }
         else if(MovieClip(root).choosecolor == 159)
         {
            this.xcolorpick = MovieClip(root).wrist1colx2;
         }
         else if(MovieClip(root).choosecolor == 160)
         {
            this.xcolorpick = MovieClip(root).wrist1colx3;
         }
         else if(MovieClip(root).choosecolor == 161)
         {
            this.xcolorpick = MovieClip(root).wrist1colx4;
         }
         else if(MovieClip(root).choosecolor == 162)
         {
            this.xcolorpick = MovieClip(root).wrist2colx1;
         }
         else if(MovieClip(root).choosecolor == 163)
         {
            this.xcolorpick = MovieClip(root).wrist2colx2;
         }
         else if(MovieClip(root).choosecolor == 164)
         {
            this.xcolorpick = MovieClip(root).wrist2colx3;
         }
         else if(MovieClip(root).choosecolor == 165)
         {
            this.xcolorpick = MovieClip(root).wrist2colx4;
         }
         else if(MovieClip(root).choosecolor == 166)
         {
            this.xcolorpick = MovieClip(root).shoulderacc1colx1;
         }
         else if(MovieClip(root).choosecolor == 167)
         {
            this.xcolorpick = MovieClip(root).shoulderacc1colx2;
         }
         else if(MovieClip(root).choosecolor == 168)
         {
            this.xcolorpick = MovieClip(root).shoulderacc1colx3;
         }
         else if(MovieClip(root).choosecolor == 169)
         {
            this.xcolorpick = MovieClip(root).shoulderacc1colx4;
         }
         else if(MovieClip(root).choosecolor == 170)
         {
            this.xcolorpick = MovieClip(root).shoulderacc2colx1;
         }
         else if(MovieClip(root).choosecolor == 171)
         {
            this.xcolorpick = MovieClip(root).shoulderacc2colx2;
         }
         else if(MovieClip(root).choosecolor == 172)
         {
            this.xcolorpick = MovieClip(root).shoulderacc2colx3;
         }
         else if(MovieClip(root).choosecolor == 173)
         {
            this.xcolorpick = MovieClip(root).shoulderacc2colx4;
         }
         else if(MovieClip(root).choosecolor == 174)
         {
            this.xcolorpick = MovieClip(root).pants1colx1;
         }
         else if(MovieClip(root).choosecolor == 175)
         {
            this.xcolorpick = MovieClip(root).pants1colx2;
         }
         else if(MovieClip(root).choosecolor == 176)
         {
            this.xcolorpick = MovieClip(root).pants1colx3;
         }
         else if(MovieClip(root).choosecolor == 177)
         {
            this.xcolorpick = MovieClip(root).pants1colx4;
         }
         else if(MovieClip(root).choosecolor == 178)
         {
            this.xcolorpick = MovieClip(root).pants2colx1;
         }
         else if(MovieClip(root).choosecolor == 179)
         {
            this.xcolorpick = MovieClip(root).pants2colx2;
         }
         else if(MovieClip(root).choosecolor == 180)
         {
            this.xcolorpick = MovieClip(root).pants2colx3;
         }
         else if(MovieClip(root).choosecolor == 181)
         {
            this.xcolorpick = MovieClip(root).pants2colx4;
         }
         else if(MovieClip(root).choosecolor == 182)
         {
            this.xcolorpick = MovieClip(root).sock1colx1;
         }
         else if(MovieClip(root).choosecolor == 183)
         {
            this.xcolorpick = MovieClip(root).sock1colx2;
         }
         else if(MovieClip(root).choosecolor == 184)
         {
            this.xcolorpick = MovieClip(root).sock1colx3;
         }
         else if(MovieClip(root).choosecolor == 185)
         {
            this.xcolorpick = MovieClip(root).sock1colx4;
         }
         else if(MovieClip(root).choosecolor == 186)
         {
            this.xcolorpick = MovieClip(root).sock2colx1;
         }
         else if(MovieClip(root).choosecolor == 187)
         {
            this.xcolorpick = MovieClip(root).sock2colx2;
         }
         else if(MovieClip(root).choosecolor == 188)
         {
            this.xcolorpick = MovieClip(root).sock2colx3;
         }
         else if(MovieClip(root).choosecolor == 189)
         {
            this.xcolorpick = MovieClip(root).sock2colx4;
         }
         else if(MovieClip(root).choosecolor == 190)
         {
            this.xcolorpick = MovieClip(root).shoe1colx1;
         }
         else if(MovieClip(root).choosecolor == 191)
         {
            this.xcolorpick = MovieClip(root).shoe1colx2;
         }
         else if(MovieClip(root).choosecolor == 192)
         {
            this.xcolorpick = MovieClip(root).shoe1colx3;
         }
         else if(MovieClip(root).choosecolor == 193)
         {
            this.xcolorpick = MovieClip(root).shoe1colx4;
         }
         else if(MovieClip(root).choosecolor == 194)
         {
            this.xcolorpick = MovieClip(root).shoe2colx1;
         }
         else if(MovieClip(root).choosecolor == 195)
         {
            this.xcolorpick = MovieClip(root).shoe2colx2;
         }
         else if(MovieClip(root).choosecolor == 196)
         {
            this.xcolorpick = MovieClip(root).shoe2colx3;
         }
         else if(MovieClip(root).choosecolor == 197)
         {
            this.xcolorpick = MovieClip(root).shoe2colx4;
         }
         else if(MovieClip(root).choosecolor == 198)
         {
            this.xcolorpick = MovieClip(root).belt1colx1;
         }
         else if(MovieClip(root).choosecolor == 199)
         {
            this.xcolorpick = MovieClip(root).belt1colx2;
         }
         else if(MovieClip(root).choosecolor == 200)
         {
            this.xcolorpick = MovieClip(root).belt1colx3;
         }
         else if(MovieClip(root).choosecolor == 201)
         {
            this.xcolorpick = MovieClip(root).belt1colx4;
         }
         else if(MovieClip(root).choosecolor == 202)
         {
            this.xcolorpick = MovieClip(root).belt2colx1;
         }
         else if(MovieClip(root).choosecolor == 203)
         {
            this.xcolorpick = MovieClip(root).belt2colx2;
         }
         else if(MovieClip(root).choosecolor == 204)
         {
            this.xcolorpick = MovieClip(root).belt2colx3;
         }
         else if(MovieClip(root).choosecolor == 205)
         {
            this.xcolorpick = MovieClip(root).belt2colx4;
         }
         else if(MovieClip(root).choosecolor == 206)
         {
            this.xcolorpick = MovieClip(root).thighacc1colx1;
         }
         else if(MovieClip(root).choosecolor == 207)
         {
            this.xcolorpick = MovieClip(root).thighacc1colx2;
         }
         else if(MovieClip(root).choosecolor == 208)
         {
            this.xcolorpick = MovieClip(root).thighacc1colx3;
         }
         else if(MovieClip(root).choosecolor == 209)
         {
            this.xcolorpick = MovieClip(root).thighacc1colx4;
         }
         else if(MovieClip(root).choosecolor == 210)
         {
            this.xcolorpick = MovieClip(root).thighacc2colx1;
         }
         else if(MovieClip(root).choosecolor == 211)
         {
            this.xcolorpick = MovieClip(root).thighacc2colx2;
         }
         else if(MovieClip(root).choosecolor == 212)
         {
            this.xcolorpick = MovieClip(root).thighacc2colx3;
         }
         else if(MovieClip(root).choosecolor == 213)
         {
            this.xcolorpick = MovieClip(root).thighacc2colx4;
         }
         else if(MovieClip(root).choosecolor == 214)
         {
            this.xcolorpick = MovieClip(root).footacc1colx1;
         }
         else if(MovieClip(root).choosecolor == 215)
         {
            this.xcolorpick = MovieClip(root).footacc1colx2;
         }
         else if(MovieClip(root).choosecolor == 216)
         {
            this.xcolorpick = MovieClip(root).footacc1colx3;
         }
         else if(MovieClip(root).choosecolor == 217)
         {
            this.xcolorpick = MovieClip(root).footacc1colx4;
         }
         else if(MovieClip(root).choosecolor == 218)
         {
            this.xcolorpick = MovieClip(root).footacc2colx1;
         }
         else if(MovieClip(root).choosecolor == 219)
         {
            this.xcolorpick = MovieClip(root).footacc2colx2;
         }
         else if(MovieClip(root).choosecolor == 220)
         {
            this.xcolorpick = MovieClip(root).footacc2colx3;
         }
         else if(MovieClip(root).choosecolor == 221)
         {
            this.xcolorpick = MovieClip(root).footacc2colx4;
         }
         else if(MovieClip(root).choosecolor == 222)
         {
            this.xcolorpick = MovieClip(root).prop1colx1;
         }
         else if(MovieClip(root).choosecolor == 223)
         {
            this.xcolorpick = MovieClip(root).prop1colx2;
         }
         else if(MovieClip(root).choosecolor == 224)
         {
            this.xcolorpick = MovieClip(root).prop1colx3;
         }
         else if(MovieClip(root).choosecolor == 225)
         {
            this.xcolorpick = MovieClip(root).prop1colx4;
         }
         else if(MovieClip(root).choosecolor == 226)
         {
            this.xcolorpick = MovieClip(root).prop2colx1;
         }
         else if(MovieClip(root).choosecolor == 227)
         {
            this.xcolorpick = MovieClip(root).prop2colx2;
         }
         else if(MovieClip(root).choosecolor == 228)
         {
            this.xcolorpick = MovieClip(root).prop2colx3;
         }
         else if(MovieClip(root).choosecolor == 229)
         {
            this.xcolorpick = MovieClip(root).prop2colx4;
         }
         else if(MovieClip(root).choosecolor == 230)
         {
            this.xcolorpick = MovieClip(root).cape1colx1;
         }
         else if(MovieClip(root).choosecolor == 231)
         {
            this.xcolorpick = MovieClip(root).cape1colx2;
         }
         else if(MovieClip(root).choosecolor == 232)
         {
            this.xcolorpick = MovieClip(root).cape1colx3;
         }
         else if(MovieClip(root).choosecolor == 233)
         {
            this.xcolorpick = MovieClip(root).cape1colx4;
         }
         else if(MovieClip(root).choosecolor == 234)
         {
            this.xcolorpick = MovieClip(root).cape2colx1;
         }
         else if(MovieClip(root).choosecolor == 235)
         {
            this.xcolorpick = MovieClip(root).cape2colx2;
         }
         else if(MovieClip(root).choosecolor == 236)
         {
            this.xcolorpick = MovieClip(root).cape2colx3;
         }
         else if(MovieClip(root).choosecolor == 237)
         {
            this.xcolorpick = MovieClip(root).cape2colx4;
         }
         else if(MovieClip(root).choosecolor == 238)
         {
            this.xcolorpick = MovieClip(root).tail1colx1;
         }
         else if(MovieClip(root).choosecolor == 239)
         {
            this.xcolorpick = MovieClip(root).tail1colx2;
         }
         else if(MovieClip(root).choosecolor == 240)
         {
            this.xcolorpick = MovieClip(root).tail1colx3;
         }
         else if(MovieClip(root).choosecolor == 241)
         {
            this.xcolorpick = MovieClip(root).tail1colx4;
         }
         else if(MovieClip(root).choosecolor == 242)
         {
            this.xcolorpick = MovieClip(root).tail2colx1;
         }
         else if(MovieClip(root).choosecolor == 243)
         {
            this.xcolorpick = MovieClip(root).tail2colx2;
         }
         else if(MovieClip(root).choosecolor == 244)
         {
            this.xcolorpick = MovieClip(root).tail2colx3;
         }
         else if(MovieClip(root).choosecolor == 245)
         {
            this.xcolorpick = MovieClip(root).tail2colx4;
         }
         else if(MovieClip(root).choosecolor == 246)
         {
            this.xcolorpick = MovieClip(root).wing1colx1;
         }
         else if(MovieClip(root).choosecolor == 247)
         {
            this.xcolorpick = MovieClip(root).wing1colx2;
         }
         else if(MovieClip(root).choosecolor == 248)
         {
            this.xcolorpick = MovieClip(root).wing1colx3;
         }
         else if(MovieClip(root).choosecolor == 249)
         {
            this.xcolorpick = MovieClip(root).wing1colx4;
         }
         else if(MovieClip(root).choosecolor == 250)
         {
            this.xcolorpick = MovieClip(root).wing2colx1;
         }
         else if(MovieClip(root).choosecolor == 251)
         {
            this.xcolorpick = MovieClip(root).wing2colx2;
         }
         else if(MovieClip(root).choosecolor == 252)
         {
            this.xcolorpick = MovieClip(root).wing2colx3;
         }
         else if(MovieClip(root).choosecolor == 253)
         {
            this.xcolorpick = MovieClip(root).wing2colx4;
         }
         else if(MovieClip(root).choosecolor == 254)
         {
            this.xcolorpick = MovieClip(root).wing3colx1;
         }
         else if(MovieClip(root).choosecolor == 255)
         {
            this.xcolorpick = MovieClip(root).wing3colx2;
         }
         else if(MovieClip(root).choosecolor == 256)
         {
            this.xcolorpick = MovieClip(root).wing3colx3;
         }
         else if(MovieClip(root).choosecolor == 257)
         {
            this.xcolorpick = MovieClip(root).wing3colx4;
         }
         else if(MovieClip(root).choosecolor == 258)
         {
            this.xcolorpick = MovieClip(root).wing4colx1;
         }
         else if(MovieClip(root).choosecolor == 259)
         {
            this.xcolorpick = MovieClip(root).wing4colx2;
         }
         else if(MovieClip(root).choosecolor == 260)
         {
            this.xcolorpick = MovieClip(root).wing4colx3;
         }
         else if(MovieClip(root).choosecolor == 261)
         {
            this.xcolorpick = MovieClip(root).wing4colx4;
         }
         else if(MovieClip(root).choosecolor == 262)
         {
            this.xcolorpick = MovieClip(root).shirtlogocolx1;
         }
         else if(MovieClip(root).choosecolor == 263)
         {
            this.xcolorpick = MovieClip(root).hatlogocolx1;
         }
         else if(MovieClip(root).choosecolor == 264)
         {
            this.xcolorpick = MovieClip(root).fx1colx1;
         }
         else if(MovieClip(root).choosecolor == 265)
         {
            this.xcolorpick = MovieClip(root).fx1colx2;
         }
         else if(MovieClip(root).choosecolor == 266)
         {
            this.xcolorpick = MovieClip(root).fx1colx3;
         }
         else if(MovieClip(root).choosecolor == 267)
         {
            this.xcolorpick = MovieClip(root).fx1colx4;
         }
         else if(MovieClip(root).choosecolor == 268)
         {
            this.xcolorpick = MovieClip(root).fx2colx1;
         }
         else if(MovieClip(root).choosecolor == 269)
         {
            this.xcolorpick = MovieClip(root).fx2colx2;
         }
         else if(MovieClip(root).choosecolor == 270)
         {
            this.xcolorpick = MovieClip(root).fx2colx3;
         }
         else if(MovieClip(root).choosecolor == 271)
         {
            this.xcolorpick = MovieClip(root).fx2colx4;
         }
         else if(MovieClip(root).choosecolor == 272)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx1;
         }
         else if(MovieClip(root).choosecolor == 273)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx2;
         }
         else if(MovieClip(root).choosecolor == 274)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx3;
         }
         else if(MovieClip(root).choosecolor == 275)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx4;
         }
         else if(MovieClip(root).choosecolor == 276)
         {
            this.xcolorpick = MovieClip(root).hairlightcolx1;
         }
         else if(MovieClip(root).choosecolor == 277)
         {
            this.xcolorpick = MovieClip(root).hairacccolx1;
         }
         else if(MovieClip(root).choosecolor == 278)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx1;
         }
         else if(MovieClip(root).choosecolor == 279)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx2;
         }
         else if(MovieClip(root).choosecolor == 280)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx3;
         }
         else if(MovieClip(root).choosecolor == 281)
         {
            this.xcolorpick = MovieClip(root).rearhaircolx4;
         }
         else if(MovieClip(root).choosecolor == 282)
         {
            this.xcolorpick = MovieClip(root).faceacc3colx1;
         }
         else if(MovieClip(root).choosecolor == 283)
         {
            this.xcolorpick = MovieClip(root).faceacc3colx2;
         }
         else if(MovieClip(root).choosecolor == 284)
         {
            this.xcolorpick = MovieClip(root).faceacc3colx3;
         }
         else if(MovieClip(root).choosecolor == 285)
         {
            this.xcolorpick = MovieClip(root).faceacc3colx4;
         }
         else if(MovieClip(root).choosecolor == 286)
         {
            this.xcolorpick = MovieClip(root).faceacc4colx1;
         }
         else if(MovieClip(root).choosecolor == 287)
         {
            this.xcolorpick = MovieClip(root).faceacc4colx2;
         }
         else if(MovieClip(root).choosecolor == 288)
         {
            this.xcolorpick = MovieClip(root).faceacc4colx3;
         }
         else if(MovieClip(root).choosecolor == 289)
         {
            this.xcolorpick = MovieClip(root).faceacc4colx4;
         }
         else if(MovieClip(root).choosecolor == 290)
         {
            this.xcolorpick = MovieClip(root).fx3colx1;
         }
         else if(MovieClip(root).choosecolor == 291)
         {
            this.xcolorpick = MovieClip(root).fx3colx2;
         }
         else if(MovieClip(root).choosecolor == 292)
         {
            this.xcolorpick = MovieClip(root).fx3colx3;
         }
         else if(MovieClip(root).choosecolor == 293)
         {
            this.xcolorpick = MovieClip(root).fx3colx4;
         }
         else if(MovieClip(root).choosecolor == 294)
         {
            this.xcolorpick = MovieClip(root).fx4colx1;
         }
         else if(MovieClip(root).choosecolor == 295)
         {
            this.xcolorpick = MovieClip(root).fx4colx2;
         }
         else if(MovieClip(root).choosecolor == 296)
         {
            this.xcolorpick = MovieClip(root).fx4colx3;
         }
         else if(MovieClip(root).choosecolor == 297)
         {
            this.xcolorpick = MovieClip(root).fx4colx4;
         }
         else if(MovieClip(root).choosecolor == 298)
         {
            this.xcolorpick = MovieClip(root).hairacccolx6;
         }
         else if(MovieClip(root).choosecolor == 299)
         {
            this.xcolorpick = MovieClip(root).hairacccolx7;
         }
         else if(MovieClip(root).choosecolor == 300)
         {
            this.xcolorpick = MovieClip(root).hairacccolx8;
         }
         else if(MovieClip(root).choosecolor == 301)
         {
            this.xcolorpick = MovieClip(root).ear1colx1;
         }
         else if(MovieClip(root).choosecolor == 302)
         {
            this.xcolorpick = MovieClip(root).ear1colx2;
         }
         else if(MovieClip(root).choosecolor == 303)
         {
            this.xcolorpick = MovieClip(root).ear1colx3;
         }
         else if(MovieClip(root).choosecolor == 304)
         {
            this.xcolorpick = MovieClip(root).ear1colx4;
         }
         else if(MovieClip(root).choosecolor == 305)
         {
            this.xcolorpick = MovieClip(root).ear2colx1;
         }
         else if(MovieClip(root).choosecolor == 306)
         {
            this.xcolorpick = MovieClip(root).ear2colx2;
         }
         else if(MovieClip(root).choosecolor == 307)
         {
            this.xcolorpick = MovieClip(root).ear2colx3;
         }
         else if(MovieClip(root).choosecolor == 308)
         {
            this.xcolorpick = MovieClip(root).ear2colx4;
         }
         else if(MovieClip(root).choosecolor == 309)
         {
            this.xcolorpick = MovieClip(root).hairlightcolx1;
         }
         else if(MovieClip(root).choosecolor == 310)
         {
            this.xcolorpick = MovieClip(root).hairlightcolx2;
         }
         this.mc1.addEventListener(MouseEvent.MOUSE_DOWN,this.startDragging);
         this.mc2.addEventListener(MouseEvent.MOUSE_DOWN,this.startDragging);
         this.mc3.addEventListener(MouseEvent.MOUSE_DOWN,this.startDragging);
         this.updateRGBColor(this.mc1.x);
         this.changehexcol();
         this.adjustLight();
      }
      
      public function inputhexcol() : void
      {
         this.xcolorpick = MovieClip(root).inputhex;
         this.changehexcol();
         this.adjustLight();
         this.selx.visible = false;
      }
      
      public function changehexcol() : void
      {
         var hexColor:String = this.xcolorpick;
         var colorValue:uint = uint(parseInt(hexColor,16));
         var hsl:Object = this.hexToHSL(colorValue);
         this.mc1.x = hsl.h / 360 * 360;
         this.mc2.x = hsl.s / 100 * 360;
         this.mc3.x = hsl.l / 100 * 360;
         this.updateHexCode();
      }
      
      public function hexToHSL(hexColor:uint) : Object
      {
         var h:Number = NaN;
         var s:Number = NaN;
         var d:Number = NaN;
         var r:Number = (hexColor >> 16 & 0xFF) / 255;
         var g:Number = (hexColor >> 8 & 0xFF) / 255;
         var b:Number = (hexColor & 0xFF) / 255;
         var max:Number = Math.max(r,g,b);
         var min:Number = Math.min(r,g,b);
         var l:Number = (max + min) / 2;
         if(max == min)
         {
            h = s = 0;
         }
         else
         {
            d = max - min;
            s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
            switch(max)
            {
               case r:
                  h = (g - b) / d + (g < b ? 6 : 0);
                  break;
               case g:
                  h = (b - r) / d + 2;
                  break;
               case b:
                  h = (r - g) / d + 4;
            }
            h /= 6;
         }
         return {
            "h":h * 360,
            "s":s * 100,
            "l":l * 100
         };
      }
      
      public function startDragging(event:MouseEvent) : void
      {
         var mc:MovieClip = event.currentTarget as MovieClip;
         MovieClip(root).docolor = 2;
         MovieClip(root).doskew = 1;
         if(mc == this.mc1)
         {
            this.mcpick = 1;
         }
         else if(mc == this.mc2)
         {
            this.mcpick = 2;
         }
         else if(mc == this.mc3)
         {
            this.mcpick = 3;
         }
         this.selx.visible = false;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.updateValues);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
      }
      
      public function stopDragging(event:MouseEvent) : void
      {
         for(var i:* = 20; i >= 2; i--)
         {
            MovieClip(root)["rcolor" + i] = MovieClip(root)["rcolor" + (i - 1)];
         }
         MovieClip(root).rcolor1 = this.hexx.text.substr(1);
         this.showcolors();
         this.selx.visible = true;
         this.selx.x = this.rcol1.x;
         this.selx.y = this.rcol2.y;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.updateValues);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
      }
      
      public function updateValues(event:MouseEvent) : void
      {
         var mc:MovieClip = this["mc" + this.mcpick];
         var newValue:Number = mouseX - x + parent.mcmain.x;
         newValue = Math.max(0,Math.min(360,newValue));
         mc.x = newValue;
         this.updateHexCode();
      }
      
      public function updateHexCode() : void
      {
         var h:Number = this.mc1.x / 360 * 360;
         var s:Number = this.mc2.x / 360 * 100;
         var l:Number = this.mc3.x / 360 * 100;
         var color:uint = this.hslToHex(h,s / 100,l / 100);
         this.hexx.text = "#" + color.toString(16).toUpperCase();
         parent.hexc = this.hexx.text.substr(1);
         this.updateColorDisplay(color);
         this.updateRGBColor(this.mc1.x);
         parent.colorchange();
         parent.colupdate();
         this.adjustLight();
         MovieClip(root).updatechar();
      }
      
      public function updateColorDisplay(color:uint) : void
      {
         var colorTransform:ColorTransform = this.ccolor.transform.colorTransform;
         colorTransform.color = color;
         this.ccolor.transform.colorTransform = colorTransform;
      }
      
      public function updateRGBColor(xPos:Number) : void
      {
         var offsetAngle:Number = 235;
         var angle:Number = (xPos / 360 * 360 + offsetAngle) % 360;
         var r:Number = this.calculateRainbowColor(angle + 120);
         var g:Number = this.calculateRainbowColor(angle);
         var b:Number = this.calculateRainbowColor(angle - 120);
         var rgbColor:uint = uint(int(r) << 16 | int(g) << 8 | int(b));
         var rgbTransform:ColorTransform = new ColorTransform();
         rgbTransform.color = rgbColor;
         this.rgbcol.transform.colorTransform = rgbTransform;
      }
      
      public function calculateRainbowColor(angle:Number) : Number
      {
         angle = (angle % 360 + 360) % 360;
         var sector:Number = angle / 60;
         var percent:Number = angle / 60 - Math.floor(angle / 60);
         switch(Math.floor(sector))
         {
            case 0:
               return 255;
            case 1:
               return 255 * (1 - percent);
            case 2:
               return 0;
            case 3:
               return 0;
            case 4:
               return 255 * percent;
            case 5:
               return 255;
            default:
               return 0;
         }
      }
      
      public function hslToHex(h:Number, s:Number, l:Number) : uint
      {
         var r:Number = NaN;
         var g:Number = NaN;
         var b:Number = NaN;
         var q:Number = NaN;
         var p:Number = NaN;
         if(s == 0)
         {
            r = g = b = l * 255;
         }
         else
         {
            q = l < 0.5 ? l * (1 + s) : l + s - l * s;
            p = 2 * l - q;
            r = this.hueToRGB(p,q,h + 120) * 255;
            g = this.hueToRGB(p,q,h) * 255;
            b = this.hueToRGB(p,q,h - 120) * 255;
         }
         return int(r) << 16 | int(g) << 8 | int(b);
      }
      
      public function hueToRGB(p:Number, q:Number, t:Number) : Number
      {
         if(t < 0)
         {
            t += 360;
         }
         if(t > 360)
         {
            t -= 360;
         }
         if(t < 60)
         {
            return p + (q - p) * t / 60;
         }
         if(t < 180)
         {
            return q;
         }
         if(t < 240)
         {
            return p + (q - p) * (240 - t) / 60;
         }
         return p;
      }
      
      public function adjustLight() : void
      {
         var normalizedPosition:Number = this.mc3.x % 361 / 361;
         if(normalizedPosition <= 0.5)
         {
            this.lightx.gotoAndStop(1);
            this.lightx.alpha = 1 - normalizedPosition * 2;
         }
         else
         {
            this.lightx.gotoAndStop(2);
            this.lightx.alpha = (normalizedPosition - 0.5) * 2;
         }
      }
      
      internal function frame1() : *
      {
         this.mcpick = 0;
         this.xcolorpick = "";
         this.favon = 1;
         this.favbt.addEventListener(MouseEvent.MOUSE_DOWN,this.favbtx);
         this.copybt.addEventListener(MouseEvent.MOUSE_DOWN,this.copybtx);
         this.inputbt.addEventListener(MouseEvent.MOUSE_DOWN,this.inputbtx);
         this.favleftbt.addEventListener(MouseEvent.MOUSE_DOWN,this.favleftbtx);
         this.favrightbt.addEventListener(MouseEvent.MOUSE_DOWN,this.favrightbtx);
         this.recblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.recblockerx);
         this.favblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.favblockerx);
         this.showcolors();
         this.startcol();
      }
   }
}

