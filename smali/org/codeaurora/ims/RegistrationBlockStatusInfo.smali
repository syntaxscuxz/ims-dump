.class public final Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
.super Ljava/lang/Object;
.source "RegistrationBlockStatusInfo.java"


# instance fields
.field private mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

.field private mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>(Lorg/codeaurora/ims/BlockStatusInfo;Lorg/codeaurora/ims/BlockStatusInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/BlockStatusInfo;Lorg/codeaurora/ims/BlockStatusInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;

    .line 21
    iput-object p2, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

    return-void
.end method


# virtual methods
.method public getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

    return-object p0
.end method

.method public getStatusOnWwan()Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;

    return-object p0
.end method

.method public setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

    return-void
.end method

.method public setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;

    return-void
.end method
