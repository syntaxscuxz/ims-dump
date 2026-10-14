.class Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCapabilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 935
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsServiceSub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    return-void
.end method


# virtual methods
.method public onSetCapabilityValueFailure(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)V
    .locals 3

    .line 947
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetCapabilityValueFailure :: capability="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " radioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$mlogd(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$fgetmCapabilityCallback(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    move-result-object v0

    .line 953
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 950
    const-string p1, "onSetCapabilityValueFailure :: Null mCapabilityCallback!"

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$mloge(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    return-void

    .line 953
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$fgetmCapabilityCallback(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    move-result-object p0

    .line 954
    invoke-static {p3}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$smgetSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I

    move-result p3

    .line 953
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    return-void
.end method

.method public onSetCapabilityValueSuccess(III)V
    .locals 2

    .line 938
    iget-object p0, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetCapabilityValueSuccess :: capability="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " radioTech="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->-$$Nest$mlogd(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    return-void
.end method
