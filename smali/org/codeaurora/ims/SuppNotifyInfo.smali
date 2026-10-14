.class public Lorg/codeaurora/ims/SuppNotifyInfo;
.super Ljava/lang/Object;
.source "SuppNotifyInfo.java"


# static fields
.field public static final MO:I = 0x0

.field public static final MT:I = 0x1


# instance fields
.field private hasHoldTone:Z

.field private mCode:I

.field private mConnId:I

.field private mHistoryInfo:Ljava/lang/String;

.field private mHoldTone:Z

.field private mIndex:I

.field private mNotificationType:I

.field private mNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->hasHoldTone:Z

    .line 53
    iput v0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNotificationType:I

    .line 54
    iput v0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mCode:I

    .line 55
    iput v0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mIndex:I

    .line 56
    iput v0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mType:I

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNumber:Ljava/lang/String;

    .line 58
    iput v0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mConnId:I

    .line 59
    iput-object v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHistoryInfo:Ljava/lang/String;

    .line 60
    iput-boolean v0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHoldTone:Z

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 76
    iget p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mCode:I

    return p0
.end method

.method public getConnId()I
    .locals 0

    .line 108
    iget p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mConnId:I

    return p0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHistoryInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getHoldTone()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHoldTone:Z

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 84
    iget p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mIndex:I

    return p0
.end method

.method public getNotificationType()I
    .locals 0

    .line 68
    iget p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNotificationType:I

    return p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 92
    iget p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mType:I

    return p0
.end method

.method public hasHoldTone()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->hasHoldTone:Z

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 72
    iput p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mCode:I

    return-void
.end method

.method public setConnId(I)V
    .locals 0

    .line 104
    iput p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mConnId:I

    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHistoryInfo:Ljava/lang/String;

    return-void
.end method

.method public setHoldTone(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHoldTone:Z

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->hasHoldTone:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 80
    iput p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mIndex:I

    return-void
.end method

.method public setNotificationType(I)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNotificationType:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 88
    iput p1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuppNotifyInfo notificationType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNotificationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mConnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " historyInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHistoryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " holdTone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/codeaurora/ims/SuppNotifyInfo;->mHoldTone:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
