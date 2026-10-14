.class Lorg/codeaurora/ims/ImsConfigImpl$3;
.super Landroid/database/ContentObserver;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 115
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$madjustAndSyncVoWiFiMode(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V

    :cond_0
    return-void
.end method
