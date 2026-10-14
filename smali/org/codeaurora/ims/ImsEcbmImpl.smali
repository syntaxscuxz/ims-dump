.class public Lorg/codeaurora/ims/ImsEcbmImpl;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;
    }
.end annotation


# instance fields
.field private final EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I

.field private final EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mHandler:Landroid/os/Handler;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I

    .line 25
    new-instance v1, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lorg/codeaurora/ims/ImsEcbmImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p2, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p2, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method
