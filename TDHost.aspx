


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	3D Secure Platformu
</title><link href="Common/Styles/qrPayment.css" rel="stylesheet" />
    <script src="Common/Styles/js/jquery-3.6.1.min.js"></script>
    <link href="Common/Styles/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Common/Styles/js/popper.min.js"></script>
    <script src="Common/Styles/js/bootstrap.min.js"></script>
    <link href="Common/Styles/css/all.min.css" rel="stylesheet" />
    <script src="Common/Styles/js/jquery.mask.min.js"></script>
    <script src="Common/Styles/tdHost.js"></script>

    <script>

        $(document).ready(() => {


            $("#inputCardHolderName").attr("placeholder", 'Kart Sahibinin Adı')
            $("#inputCardNo").attr("placeholder", 'Kart Numarası')
            $("#inputPayerNote").attr("placeholder", 'CustomerDescription')

            if ('TR' == "EN") {
                $('#Expiry').remove();
                $('#ccCol').css("width", "214px")
            }

            else
                $('#ExpiryEng').remove();

            $('#inputCardNo, #inputCardHolderName, #inputCvv2').each(function () {

                if ('TR' == "EN") {
                    this.setCustomValidity('Please fill out here.')
                }
                else {
                    this.setCustomValidity('Lütfen işaretli yerleri doldurunuz')
                }
            });

        })
    </script>

</head>
<body>

    <div id="divHeader">
        <img id="QNBLogo" src="Common/Styles/images/QNB.png" />
        SanalPOS               
    </div>

    <hr id="logohr" />

    <div id="divQRHostAuth">

        <div id="wrapper" class="content-wrapper">

            <div class="content">

                <div class="content-body">

                    <div id="paymentHeaderTitle">
                        QNB Finansbank Güvenli Ödeme Sayfası
                    </div>

                    <hr id="paymenthr" />

                    <div id="txtPaymentInformation"></div>

                    <form method="post" action="./TDHost.aspx" id="step1Form">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="H9uyrGRHC7jRxFn66Eem1PwGDFYPALk8+Ekb/DwllBUVsAjPj4XUv0F9XE6hHUcBudhAX2SbXK+Z1b687As+p+nzhhIdJ6CtZUzAiWjTUpEATugvLiFuaE1p5O5AClWgFbSbT87kRKApYV6+ujFPbKpPmjwkF8eOkNunHHs7S0wOBEJixUBqa0d2sJ5TmdH7BHeZImBkWf/BnJIudfaY6yL+POZXlN3WERLMNNmqgYg71AYvmlCJVOUzj18pMkD/5v4X161+fRtIRxmoppV9G16Kz7fqvHJ1bDolfYAVIVP+4pY1gMJH+x7MmZm52v0sP77PksuFnCBW342JkoMCBvgfOnVdPcrhco41DqVIEI/WPwMi81L+pawvKsEGYDU48VMz1W8KNjhplRrtL8ab5kK/vVK1AJrBpMpXI5nNDh6R3fZ0okOvZZlFulIC1pp5KVasISh7EybWhGTuP3LETw1/+GtR1OTO93q6MdC4h9dtYEOeueywkAJO0rlG1R9K5ThpunyBOHPSZS30tF/LWMBBSym9euKc+95WAKQzyZ/UsTGKmdvJHLNLB03mP9Rs5mfBq8Ky2FQKO2FE8KTqHyxBGFodJPpB1bbItK/MPPqDVACaZUSm2GEgTx4vh8//c60buakoziR5t3vq+E1floy2qHbFTDGhXwEE7VKVOKNeNjMNkfraIeWZlRoInMMHMY3QHdmSgyIg27wnmBva4ZuFWkTRpqbS+BVNQFkbXJKeG8Jv7FWVro5ebnBNoMsezMCb9Dik5XbEFhv6lgzGl1BpOQTATe/ICCR4rka17zTaOXiHHp4DMnVpoJoAYASQp7qEMGGJT0q2IzHPXOl8K1U3k4fMqgZHd12fsf7A6XmAfSlqPNLxnLjFzXpdYibIH3TRMHzIV80hAdhNJutFn6+zPrSCSbjtqFt+6XBSYPoBglcwESvgW3cuGuqbVp2OlcnCfATRBAK9M5fIjIpuK0eJm3tAX65LZ7VbmH9xeNzPy7ZbmqDwLI7m5/LOoD9Hzo3IQmzx0HJ8BXBWtf2x3JPE6jA9giJT1OWMUxZaX05YWuk+XkSFKVtgGsVZ3iLAcfqYHFy03mi4FYmP9N+jE1KOY4wg4OdNYFfJMxlCs/piqiLpVGkqCeDWbRoZXB8FUNpsIEkAuELaWcTawZzSwnvGjrlY/TZboZTkEz0ryAItV0wE6WmO+pYT9ogf61QJmHVf91ZKQgzPNNGbCrnds6wfThX0JEyth+r0me9pMys0R0YK/yAT2V3DA8jiw4g86HqXZtlznGYS0F9xxJmrbDU66PZ1ZucWI/uArtOVvAF/CPO5u6zUk+V+lS5sc+5emzg2V/U9pmC3vtjoTjFJJFoD0PXdtuJZhRJCP2jISvhWhzM3VovjzIlv8xGa6ZOOiPPEYrpc99rmlN1JQbOnHtsY9P+FCKB05pQg8VPVK/39IQLOdC3cerEt1/V79anOesNZT8k5jCTDR9SYBshJLrv/fHScBX+x/F/VTprjR2podo3UD66dUWNzVlMnmjr3fg/9LkepCLjcLOLFHw2H9CCmgXPoGLy9/zVmZYWCGMFlrzt3P03dHC7YFX6VDkl17T4bvWuSkxPVfRAMFkRO4aLU6ic2PkRuz53XOIZfdtfwEauaoBHZedom8UKmJNDtDeLJaNiH7Q0L1QKnJaC8MwCM+EB3kXHrUQlMU1wFmTAL/oKbzmHX1duwJg3tRCCl7daIMcs4chKyu0/GlKppTJQolZIkTZL9oelXvXaqd3i3v0L8sNlRfrfpeT/tavSCIvL0ZOWIcPzGxuPKLqf82U8fAsBfXQ1A+nD5IgChtAub4FGaoIDkyfehgO2oUvVLQ8LaIi5t/5w5fYzwHbOsUN/ihcjdGASayPtOd+WpEyojGZYuyd6vdOSPUvSgJjZyytKU4hEqOKRpIZlIMKEOUvBnOpl3W/p9TWlJbxCKYIkS2uezGm2q7kDHNczhPIbm+drEmT6ATWzcz1gyyYzYB6wTIuPwi+WhLoa2EWb0euk/1cHbNBTjr6luEt66Jh+7MUiuWTUuXW7AnLA5mY4Ra5phDIFr9cEnNrFb/G986OWLqyDFESP8FvCK89TYJlnY6K20s2W1MvTO5sA/EOHxjUIhokXwe5Mt+wUwpE30XBAddQ1wdNiCyMJkagsqn1uJEOuG8TkZSZ3dlWaKsJHfxbUFoSEZoD36OXBqCAS3NyZMkcGYUC7yYzt2GV9aVrCoRSwlyut9jf+bQAOOhfGgUsqnbSn3Ud4S1M2LsMQSYuXVroYLEOpAOLoWbHxKhPI1cmTDVj6u0IjelwfNPGaM21PYe1pvD9aJ4fIHu0N5czDVYqj4hFBCcQaaQeLaEJZdqHx0VlWE6iGmt6gF8Tu2pHtmS3yDtwDu0CtE7sKAVYaStEGt/9OFbXUiqeAn6ZYyv/TVcH8JmUdaGkOCnGnHXYzjuWuHf9xgiG+VUISkhJ0UG+rDE37PFjNeJruZI/n92J2kVNC0gIN6uU2tiIWDt71aAlCFCEB4av1wyRIYUWUUYzHtfm7oNonuVOAMaaLmHFy2fWD1oCArE4UOgxfd9X24quWmlbyQZStdC1lz0jLhkWOrDGG14+pI+64phvhhv+CIV0DPHCCi/gZJUf93cJbj1npii1A4feexkokSeBNCbZ/Bq6iu/O+Eh7s5M6CmkF6paO3rik5b+Z67ImG2/Bg7EjRyn6eq6fVFVePZWBc51sb8qgtIpTz0SJWo9YvbuiUVSLAinWoXcLFA4ga/SEDfSukJaDaPzLJT5YNitJLCZiBk6nz5+zkCiBlSDmNlGQRnAuWd09x/ltmlzo1V7qUkow8kRrj8qPJUJC4i/546gCpR/aGfzQjiXRgukMc9lz5iFfiJmauJWL+m1JGTD6Q5Yh8t2ntFI/YPwlxuSZCFL0rFM0YA05qqd+zSIV+eCWsXZnDMPApOpakxMAEc34xvCZAYruMev30JxtD2wm3Zlgc4AbcV0u/XJNGKRs952cwG+XZxavdTqKPN5zZ2/ZLIvvdd296oRV2kxPu7yMfTVx1JBRJOTNJfhAFN5tvjSzJfddTqoN7yHR4nF7iwjiklJXromwIY5qHo96fBNzOY4AGsMcO6gFqpybE6NeYYyWZK24wk7xbU4fwSUWNy8Q+/zOEkxZwfLOAG6vw2TrjhfdIOdaf3q3ZewwIagQJ8rhlgTFc2HCgb3bS0We48e0yw+qPcQNi6bRkqRnW0qnsfQ6MrcMs/Y2m3oRHf2GR5TMS9rrjW3PPsPkGjATs+lCrbi423xneAOqiyK9gNxAf59q0/I6Z0jGpq0YLcbhVMeZkLMXdjJIOh1bWvilWRrRkmwQ/MJEEFEeV6uaXNWMv6Z9ahHvETseUTnsiQxSh5tpsq6kWkhrYKj9uG/K0FaUmufjjHK4sW8mdO1vufcrBTibCjrUcHjY8lbj2NP7X3e18tnjGoLDTgzIYYh0DD9Rg/XnGSaMzFbPny9CoVNM/Cj9c6uqHIaYjHJvyZe4UAVk1bkl5tnwD9gaYl9gkCLSTCGMAQXRYJZIbIxgb3ibSismKFS68YZ2+zl/MGJN2dO74XtZktvAPLDqs9EquFHy8qyjSfo1Ywi0y/9ZpZByxvM5+imQ/A/NEZA6Yy0KJRLAVwGYwoBVsAFuxEae7dh9KV1NPSHkpL23OWxRC16kXiwAP9sBcDpNJISVTET2wvBsW7JCwqUHxgJiz0MREtWvElrJ55oef+K6ImUJVVwgRG3LLC4yLDlaWp4fB3GMe1Wh+PFDy1nvv08JGmwiFx3n4SfLMjLBLJ/SNxascTjsOcHLV2FFGAhgVayoAtwg+x3gAb21Lw6zP22cCMmLhJn2HEyW5k54e7G0dfUuHd8Bwj0ooNHLKdfpagMh8MOjTM5mW93YevdIe8wAf8TcuGdtsKRFQdTsI0l0hbp5oCuJew+r8MHlbhmhTmvtOV7M48fUZ9GnTvfKtDaw8Tj2+mwoM3bJJaGkwVUZDop+1wItIKrllehQNoZHvA+Fwd+smArOuWkUzXj/QwWWVysCWlWEkPIPAJVHdIIrh32ixF8uN1jz0GMKlLo6bX4vv49pjdsN3ljOuztKb0Z5vqm04twORn1X/e/wX5WBFjTqo8fqFaJfgINlZmrD/2+ryJdu57/8daPfu2mRHsjJyN/h/PpSIR3fQH2187FO0Cdw+2rjH9XEwWjZ83j+udx3gMuZQYoD2ePX+SiDmgjwG+RW9JzuIM/Jh93mmV2BpEQZAPEXt3xYpsNGT8ZCvmnUFmb/aYOrBOUGYm1o4YoAAXlezhb3ewrIk8PhZN2xZrBSt9Fu+4JXJsXO0ZDWw7T0SFkR4mF4UdqyAMCa4DLA0VB285XVORfxOQQWEXIrTFm0s19f1fjejkjZHKY+CwWUbSWltBwTxtxhGewR/SjUxV9YPr0n/UNK4HmKeqa9BA6rpF4DrqpcqJk4cnZpMxJmvRT4j/YJSdQJQHlHs7sQAwKdbKRup15pmnUf6c2Y8ppUqMRUtG/X/aQwvfc3pdZPhh47H10X5DJcgyJgru7gzO1+ulket1MJqJ8+Okg9GhKkwyo1afZ/qNvmhDaQxs+ubgCswcuLHcjFJa6fhXzzaBAuFc85fFUhTT9MWVLCykkJ3fbWIPtVgM+W3x8yfVA8aG07VgyVNI7hhNHCP8OAK5U0wfhkt48uxysBbihDnaARUdbr2DDJZ22SBa2ET7UU2l5pif5ahWyPSTpzvEba3IlF2x+MwYsq16lh3hFLb7ELxv3pTdP1ea5/V9f7uLytVzbOvr9h6nigtY62nG/vWeqtnRbpdH1evxGLO3OR9vCFoXjq2xoR2K5xX0O33tEQr5/PViSICQjzqF9V/AuFibGrRwdPCzSQi4fwSxBuvrevSHmw+PHSeuLoIPHU1GwvoOgjmgKUr4waDFTn2fQJAtncutJtk03lp4zCtdQ7v+bZqA6qnO7DOtvXZ1Pf4wS2tkISkwAqOq+9VxJ+l6A7EPjlpjKm1P7LQpkN4ErQmAQZR2jy5DSGnqzrOA/hx/uK7R3Mhe5eOit3+fuAyYlCiuYpvpAULdmTCI/eBZXCIVWHDvMHtoEhkN85ZPtfJrDVC2E2ACAkrdhBQ82906371WR9UwMmuw+Vs34xIPp21fhCUu42wUtcmORh9xxJlUFlQeaPXrwZhoZbKvzyFGanJedwVEjlTy/PNnLm2wtZunLC9UW6dpXfFz4RtsRgozYfTwRX+x58XxpJikLn9AfkH54D9YSqpY4S/42cIBPqUrwmFLMAYF1PM3YNn42IsU9mJap5gVCzauY8FrGoPIy4QfxE2HFFBIa46TKYnzCDLd38N8jjXGPRZs0JyRglHhe0TVjbTPH7F5aTRHX4E79R17wXdnzfjKguNvR+k+9ICQdjToiUkDDpDgcWosJ1NXU5DywcyL47HH8ECAXJkzRF8cRlQyOSMkzRU+L+YCw7Qn0PL7O4oDuMn/trv19YgQyts7s1z9Tvfg4SCy6H42iLhO51WBHR/aBAHELNsk9uEy0x7zX+IUSSjk4A135dmYsy5Z9OpqkBIaHy32Gytygzn7sDSK1/FmVLItpIDqqEpGofXigcHrfzcq+JLr3iWjKLWZu0BCcTllGKupnMe2wJo9pyBA5hHCfeO/ZkNBLx553hYmQq8EAviRAlayPeVFmosc4iI23zq/ucwczsAeFgusfh+Y4Z/xn6teplrAAqAlm9CRpv4p6uf4bM7eGec790jxy+lrvahHyB51Y3sXAEH2kfhOaST/AQqvf2cpu7UdeQ4cakKqQBT5MPvUb97q0oOnhgVSomjThbsxD0Fr7xNZwIrEeDYHuGJy95UD7UGEMMI0AvZb901ZG6vqo1oHQFaBpszPafIFRmhR3Yn46g8K2LViWFQik9QBNgDJsCkkBsKLpFVrO9A9fhXB0MsEuOikc1RyjvFawqecj2l3PK7yzLf11dzs8JsN2kw/3kph+S3klF9hLCWbtbj6x4wJYlq0lSESpREmGnQzYlaNz5vpCIX6SRjqv1itmmiKP3m4ka4Kg5qT1uidjo8iCKn+jY/kEFcubNOMnek5FMarOlyZgaR18F7XzPGcmBeZ618XXnlRJAd2hhPhINKPqmSU//ylyNJbTDFnoigTCF/rstJWkslg75gCh+73aZ4WCAuJSoKP7SdeRabi/TWPuJ99zYcPRcoZlmM+rzN/OW6Kx07wvOEqh53eU9lfZ4bK266AjeCWuMl/8D3HfSCsrDvrmXy/U8mylX9e5O3/ETkBYf40tYyq50Dh2UPLqSyXMTVqoWNzP+ZUX4HeZdIl03FdL5ko+ngOqRjbF8xq6Oc9b55DCqb9mV3bFDi7lLGkcYaKApXBeYoH/hce4I0J9x5QIcgemvKlI6eWEfvrcv5oOWmyVfvZa0oH+yiNI9GrfwOfb1g+DAGL03tm4OXCI8Z16FrFQR8hbsHL4CIreXEssFJkCk5ljC7ghZQj+w64qagkLhDb48BPde1ToBFKFsL57tHQMbe2XZUdCzdJqklcbug8MXjdHJYirAvpKpir8pwreLE781tBJl/AwQE0yVIrn2UNsNrnfqPhvGqoOKnsXFIyikXaXPzzn9D26eksBaWL8W+HmIDGcMx73YPNGOb7M9b4Ngns7DudBS5g5Batt+AzhU1uLL1Vk0GnuLmsV4S/E4eUnXMuzLpclJ4gAlqXOd36+LbPDB6YJe1jneh8s22o+vIjQaD2UEOeHX6eO3APHCB1V51wwsIsIJj9uXw3dPKXe6jhnvVex1uzhZuLtMAhGhIzt8BFaA8j+4Bjpp4HMLtq8qO6S0kZ3xOuxJHU/08EgsanzUBTTiLDD6EXvz7YR11X624nJ2BQo2BypZenOwECbatY6nzSsLs47U4cb3lCZn7/HTemBCOaqCbWbLSKY9JBXAdmbbcp85MJH7sAbbzrdJW9E+68N1Dby5gVl3SeK5jmR7DAI6dKs3amP5bTOiZ/j8asUfK8D/vPPi/tIaDsMiaZPHmkxwh+4Cp7eW2LOp9Ar6a8oW/8WnmCgIa8HzXCWpXIKrykhiyUSlm3ndKSr0YquwRNbLCqngGxBRebpKX6paWWgBAusDLYOM9PbTTKzZax9ppZ8Dy+4Zk++g5kZLBnUtZQ48UIuLcoCaODPVNrqNELgCfhJ1CM+ZvDADq3ttL7ngaZsr3GGNUKE8cmp5BXUcCWIgcb+P0TlGEv35ari/OxZsvUxsYBQXw/9p/TjPRHw4XzktDmx/O5l+xdyaRe5h0emwCDiperl50r/dHgtfLnbace637M9n48fgG3e30HvjUoaEslywADJ7Kj0H1afzZ8BOHgB1vlIwBOOgoxvBo7xANW3ySwnfJ2SB10ksmrwb253QKUDOpG//xXaSPTcAb2E4HMkH5siQsAbRHu/27qxNvfetS+/MqlykZcKPjbQ1SJQ8+n2TbbSky6hjHbn+dG0VLALF5oSImafJl7F+8lzjeDeNq+tnUiE+Vrzd4el9dlg1T/NRRYLxIwLd2NSesRzFmXH5OzhM6649OVo8sWg1P7vqXalBaKoHg7FpSMNvLQAdSgHSbWVLp3xnWC1KD66vvOjpAEyJvkdbQYwhZjP1UCoampxj/V5CxY/AXQwNWj3+GKv8obwXMsYYeI6C1BDc3HQMMKbpRKTJHgZYOKYY38Dgt4/bNYXj7juUJKoOs5ckhNZadQtYwA9FOtZWkomOvapQWzHTaMGQfjlRydqc0CyRS4XsNAgFgT7akeY+M7gzp8BBKjROrZtvKCGih8dDCQwBm6qh2HTYJ5f9F1gQbxl1dVdlJ4op0wgC67KDCiIo0P3u217q/JMkmvejoeoY//NqLgfbUVQRay695QEjCcitsD9F7VBLtOkl7Z+VkLvFUBlqhP7CqYKVIQ2DBG837HfuGiJHXAq8TKLckdQK+1GfHouSnKnfkPXu8aVa6quWtUtedlXxRewjQiBDdw58cKIZZXXB41qblV3cERy4pBDV8yQncJ+J6rxN5FQ8vAdPUiR+QBwWBQ2ThG3Ue/ppGEK/aCsWJX4Mim450TsYM9/IbAzlkVM3r05lPsCsnIPauJ1hlxsot1scroACcvVRJWtB3ZQatmemzJkFQYTsZbpjU+QYHfAa/INdXswoP/FDsHXY3SX1hykLyg6m4ZfYAdQk/k3aBpi63Z9qm1zVt+vFYtXdFiZVETp9m1oMmChqgrH+dh+r5gG0xPeyg6rw3T4aVYZZ5qJcalMaFFpEk5q1DgfGLhTWR1MXHJwqdmxTtsDaNrGPom0QNrdcgdeNIPNtNcxTEqMGnRu6uq33qVDx8aXm8gmYLH0m6gTIbz4echTSXjjYKXJvh9Yc9B2b8kejKThUwJ2QxjVgwzEzQXEgn2e1fbAyDBPBizr33b+i4V/ExDsjWrh/pwfrZKC8T9AUjVbm9EfC6c1kCVP/uSFUIiqG6vLGCQFcIBoNeub0GRe7Bs01zbTZereZ7N87eFI7mLlhGKr/8/uaAm4h+uAxTqy/CTsDgaUSFhnRC0dv2doetNEv4siqY5e8NsVGoFHjxtTJNjAw7PB3ZAy2OZOVimxGSdEZoYw0gQN5NMsvJRgZEVqlnDO5zZzOtKbT21oO5jZejUGT9rkB1hKhkDvIaR3yKocoyeMT5R/WwTCBPufkda2oiyCY4Evg7R+5h72EMbYuN92w1xJ8yqqA==" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0277E0E9" />
</div>

                        <input name="hiddenTimeout" type="hidden" id="hiddenTimeout" value="4/13/2023 3:06:57 PM" />

                        

                        <div id="paymentInformation" class="paymentInformation">

                            <div class="mb-3 row" id="paymentInformationRow" style="margin-top: -9px;">
                                <label for="txtMrcName" class="col-sm-4 col-form-label paymentInformationLabel">Üye İş Yeri Adı</label>
                                <div class="col-sm-8 divtransactionInformation">
                                    <input name="txtMrcName" type="text" id="txtMrcName" readonly="" class="form-control-plaintext transactionInformation" value="Fİ TELEKOM. LTD. ŞTİ" />
                                </div>
                            </div>

                            <div class="mb-3 row " id="paymentInformationRow2">
                                <label for="txtAmount" class="col-sm-4 col-form-label paymentInformationLabel">İşlem Tutarı</label>
                                <div class="col-sm-8 divtransactionInformation">
                                    <input name="txtAmount" type="text" id="txtAmount" readonly="" class="form-control-plaintext transactionInformation" value="120  TL" />
                                </div>
                            </div>

                            <div class="mb-3 row" id="paymentInformationRow3">
                                <label for="txtInstallmentCount" class="col-sm-4 col-form-label paymentInformationLabel">Taksit Sayısı</label>
                                <div class="col-sm-8 divtransactionInformation">
                                    <input name="txtInstallmentCount" type="text" id="txtInstallmentCount" readonly="" class="form-control-plaintext transactionInformation" value="0" />
                                </div>
                            </div>

                              <div id="paymentInformationRow4" class="mb-3 row" style="display:none;">
                                <label for="txtMerchantNote" class="col-sm-4 col-form-label paymentInformationLabel">Üye İşyeri Açıklama</label>
                                <div class="col-sm-8 divtransactionInformation">
                                    <input name="txtMerchantNote" type="text" id="txtMerchantNote" readonly="" class="form-control-plaintext transactionInformation" />
                                </div>
                            </div>

                             <div id="divLinkCustomerNote" class="mb-3 row" style="margin-top:30px;display:none;">
                                        <label for="inputPayerNote" style="width:233px;" class="col-sm-5 col-form-label cardInput">Müşteri Açıklama </label>
                                        <div class="col-sm-7">
                                            <input name="inputPayerNote" type="text" id="inputPayerNote" class="form-control" />
                                        </div>
                                    </div>

                        </div>
                        <div id="ccQrRow" class="row">
                            <div class="col-sm-3" id="ccCol">
                                <img id="ccSm" src="Common/Styles/images/creditcard.png" />
                                Kredi Kartı ile Öde
                            </div>
                        </div>

                        

                        
                        <div id="divPaymentInformation" class="row">

                            

                            <div id="ccDiv">
                                <div class="col-sm-10">

                                    <div class="mb-3 row">
                                        <label for="inputCardHolderName" class="col-sm-5 col-form-label cardInput">Kart Sahibinin Adı</label>
                                        <div class="col-sm-7">
                                            <input name="inputCardHolderName" type="text" id="inputCardHolderName" oninput="setCustomValidity(&#39;&#39;)" class="form-control " placeholder="Kart Sahibinin Adı" required="" />
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="inputCardNo" class="col-sm-5 col-form-label cardInput ">Kart Numarası</label>
                                        <div class="col-sm-7">
                                            <input name="inputCardNo" type="text" id="inputCardNo" class="form-control" placeholder="Kart Numarası" max="16" min="16" oninput="setCustomValidity(&#39;&#39;)" required="" />
                                        </div>
                                    </div>

                                    <input name="txtExpDate" type="hidden" id="txtExpDate" />
                                    <div id="Expiry" class="mb-3 row">

                                        <label for="inputExpiry" class="col-sm-5 col-form-label cardInput">Son Kullanma Tarihi</label>

                                        <select name="cardExpiryMonth" id="cardExpiryMonth" class="form-select form-select-sm" aria-label=".form-select-sm example" onchange="calcExpDate()" oninvalid="this.setCustomValidity(&#39;Lütfen işaretli yerleri doldurunuz&#39;)" oninput="setCustomValidity(&#39;&#39;)" required="">
	<option value="">Ay</option>
	<option value="01">01</option>
	<option value="02">02</option>
	<option value="03">03</option>
	<option value="04">04</option>
	<option value="05">05</option>
	<option value="06">06</option>
	<option value="07">07</option>
	<option value="08">08</option>
	<option value="09">09</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
</select>

                                        <select class="form-select form-select-sm" id="cardExpiryYear" aria-label=".form-select-sm example" onchange="calcExpDate()"
                                            oninvalid="this.setCustomValidity('Lütfen işaretli yerleri doldurunuz')" oninput="setCustomValidity('')" required>
                                            <option value="">Yıl
                                            </option>
                                            
                                            <option value="2023">
                                                2023
                                            </option>
                                            
                                            <option value="2024">
                                                2024
                                            </option>
                                            
                                            <option value="2025">
                                                2025
                                            </option>
                                            
                                            <option value="2026">
                                                2026
                                            </option>
                                            
                                            <option value="2027">
                                                2027
                                            </option>
                                            
                                            <option value="2028">
                                                2028
                                            </option>
                                            
                                            <option value="2029">
                                                2029
                                            </option>
                                            
                                            <option value="2030">
                                                2030
                                            </option>
                                            
                                            <option value="2031">
                                                2031
                                            </option>
                                            
                                            <option value="2032">
                                                2032
                                            </option>
                                            
                                            <option value="2033">
                                                2033
                                            </option>
                                            
                                            <option value="2034">
                                                2034
                                            </option>
                                            
                                            <option value="2035">
                                                2035
                                            </option>
                                            
                                            <option value="2036">
                                                2036
                                            </option>
                                            
                                            <option value="2037">
                                                2037
                                            </option>
                                            
                                            <option value="2038">
                                                2038
                                            </option>
                                            
                                            <option value="2039">
                                                2039
                                            </option>
                                            
                                            <option value="2040">
                                                2040
                                            </option>
                                            
                                            <option value="2041">
                                                2041
                                            </option>
                                            
                                            <option value="2042">
                                                2042
                                            </option>
                                            
                                            <option value="2043">
                                                2043
                                            </option>
                                            
                                            <option value="2044">
                                                2044
                                            </option>
                                            
                                            <option value="2045">
                                                2045
                                            </option>
                                            
                                            <option value="2046">
                                                2046
                                            </option>
                                            
                                            <option value="2047">
                                                2047
                                            </option>
                                            
                                            <option value="2048">
                                                2048
                                            </option>
                                            
                                            <option value="2049">
                                                2049
                                            </option>
                                            
                                            <option value="2050">
                                                2050
                                            </option>
                                            
                                            <option value="2051">
                                                2051
                                            </option>
                                            
                                            <option value="2052">
                                                2052
                                            </option>
                                            
                                            <option value="2053">
                                                2053
                                            </option>
                                            
                                            <option value="2054">
                                                2054
                                            </option>
                                            
                                            <option value="2055">
                                                2055
                                            </option>
                                            
                                            <option value="2056">
                                                2056
                                            </option>
                                            
                                            <option value="2057">
                                                2057
                                            </option>
                                            
                                            <option value="2058">
                                                2058
                                            </option>
                                            
                                        </select>

                                    </div>

                                    <div id="ExpiryEng" class="mb-3 row">

                                        <label for="inputExpiry" class="col-sm-5 col-form-label cardInput">Son Kullanma Tarihi</label>


                                        <select name="cardExpiryMonthEng" id="cardExpiryMonthEng" class="form-select form-select-sm" aria-label=".form-select-sm example" onchange="calcExpDateEng()" oninvalid="this.setCustomValidity(&#39;Please fill out here.&#39;)" oninput="setCustomValidity(&#39;&#39;)" required="">
	<option value="">Month</option>
	<option value="01">01</option>
	<option value="02">02</option>
	<option value="03">03</option>
	<option value="04">04</option>
	<option value="05">05</option>
	<option value="06">06</option>
	<option value="07">07</option>
	<option value="08">08</option>
	<option value="09">09</option>
	<option value="10">10</option>
	<option value="11">11</option>
	<option value="12">12</option>
</select>

                                        <select class="form-select form-select-sm" id="cardExpiryYearEng" aria-label=".form-select-sm example" onchange="calcExpDateEng()"
                                            oninvalid="this.setCustomValidity('Please fill out here.')" oninput="setCustomValidity('')" required>
                                            <option value="">Year
                                            </option>
                                            
                                            <option value="2023">
                                                2023
                                            </option>
                                            
                                            <option value="2024">
                                                2024
                                            </option>
                                            
                                            <option value="2025">
                                                2025
                                            </option>
                                            
                                            <option value="2026">
                                                2026
                                            </option>
                                            
                                            <option value="2027">
                                                2027
                                            </option>
                                            
                                            <option value="2028">
                                                2028
                                            </option>
                                            
                                            <option value="2029">
                                                2029
                                            </option>
                                            
                                            <option value="2030">
                                                2030
                                            </option>
                                            
                                            <option value="2031">
                                                2031
                                            </option>
                                            
                                            <option value="2032">
                                                2032
                                            </option>
                                            
                                            <option value="2033">
                                                2033
                                            </option>
                                            
                                            <option value="2034">
                                                2034
                                            </option>
                                            
                                            <option value="2035">
                                                2035
                                            </option>
                                            
                                            <option value="2036">
                                                2036
                                            </option>
                                            
                                            <option value="2037">
                                                2037
                                            </option>
                                            
                                            <option value="2038">
                                                2038
                                            </option>
                                            
                                            <option value="2039">
                                                2039
                                            </option>
                                            
                                            <option value="2040">
                                                2040
                                            </option>
                                            
                                            <option value="2041">
                                                2041
                                            </option>
                                            
                                            <option value="2042">
                                                2042
                                            </option>
                                            
                                            <option value="2043">
                                                2043
                                            </option>
                                            
                                            <option value="2044">
                                                2044
                                            </option>
                                            
                                            <option value="2045">
                                                2045
                                            </option>
                                            
                                            <option value="2046">
                                                2046
                                            </option>
                                            
                                            <option value="2047">
                                                2047
                                            </option>
                                            
                                            <option value="2048">
                                                2048
                                            </option>
                                            
                                            <option value="2049">
                                                2049
                                            </option>
                                            
                                            <option value="2050">
                                                2050
                                            </option>
                                            
                                            <option value="2051">
                                                2051
                                            </option>
                                            
                                            <option value="2052">
                                                2052
                                            </option>
                                            
                                            <option value="2053">
                                                2053
                                            </option>
                                            
                                            <option value="2054">
                                                2054
                                            </option>
                                            
                                            <option value="2055">
                                                2055
                                            </option>
                                            
                                            <option value="2056">
                                                2056
                                            </option>
                                            
                                            <option value="2057">
                                                2057
                                            </option>
                                            
                                            <option value="2058">
                                                2058
                                            </option>
                                            
                                        </select>
                                    </div>

                                    <div class="mb-3 row">
                                        <label for="inputCvv2" class="col-sm-5 col-form-label cardInput">CVV2</label>
                                        <div class="col-sm-7 popup">
                                            <input name="inputCvv2" type="text" id="inputCvv2" class="form-control" placeholder="CVV2" oninput="setCustomValidity(&#39;&#39;)" required="" />

                                            <span class="popuptext" id="myPopup">Kredi kartınızın arka yüzündeki numaranın son 3 rakamı CVV2, CVC2 ya da CID adı verilen bir güvenlik kodudur.</span>

                                            <div style="display: inline;"><span id="info"><i class="fa-solid fa-circle-info"></i></span></div>

                                        </div>
                                    </div>

                                    <div class="mb-3 row">
                                        <div class="col-sm-5"></div>
                                        <div class="col-sm-7" id="divPaymentBtn">
                                            <button type="submit" class="btn" id="btnPaymentSubmit">Ödemeyi Tamamla</button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            


                            


                            <div class="col-sm-2">
                            </div>

                            <hr style="margin-top: 10px; border: 1px solid lightgray" />

                            <div class="row">
                                <div class="col-md-7"></div>
                                <div class="col-md-5" id="divImages">

                                    <img id="mcImg" src="Common/Styles/images/mc.png" />
                                     <img id="visaImg" src="Common/Styles/images/visa.png" />
                                    <img id="troyImg" src="Common/Styles/images/troy.png" />
                                   
                                    
                                </div>
                            </div>
                            </div>
                    </form>
                </div>
            </div>


        </div>

        <div id="divFooter"></div>
    </div>
</body>
</html>

