.class Lorg/codeaurora/ims/ImsConfigImpl$8;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->setVoiceDomainSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 872
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 875
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v1

    const-string v2, "moto_voice_domain_pref_ignore_bool"

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 882
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz v0, :cond_0

    .line 878
    const-string p0, "SetVoiceDomainSetting invalid"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 882
    :cond_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 883
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x3

    .line 887
    :goto_1
    new-instance v1, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 888
    invoke-virtual {v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getVoiceDomainSetting()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 889
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetVoiceDomainSetting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setVoiceDomainSetting(I)Z

    :cond_3
    return-void
.end method
