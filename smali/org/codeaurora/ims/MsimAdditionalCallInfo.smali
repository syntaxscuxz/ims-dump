.class public final Lorg/codeaurora/ims/MsimAdditionalCallInfo;
.super Ljava/lang/Object;
.source "MsimAdditionalCallInfo.java"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/MsimAdditionalCallInfo;)V
    .locals 0

    .line 25
    invoke-virtual {p1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 40
    :cond_1
    check-cast p1, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 41
    iget p0, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCode()I
    .locals 0

    .line 45
    iget p0, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsimAdditionalCallInfo additional code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
