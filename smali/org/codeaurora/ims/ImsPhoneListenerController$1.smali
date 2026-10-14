.class Lorg/codeaurora/ims/ImsPhoneListenerController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImsPhoneListenerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsPhoneListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsPhoneListenerController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsPhoneListenerController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController$1;->this$0:Lorg/codeaurora/ims/ImsPhoneListenerController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController$1;->this$0:Lorg/codeaurora/ims/ImsPhoneListenerController;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->-$$Nest$mupdatePhoneStateListeners(Lorg/codeaurora/ims/ImsPhoneListenerController;)V

    return-void
.end method
