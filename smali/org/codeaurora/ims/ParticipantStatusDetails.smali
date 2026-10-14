.class public final Lorg/codeaurora/ims/ParticipantStatusDetails;
.super Ljava/lang/Object;
.source "ParticipantStatusDetails.java"


# static fields
.field public static final ADD:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final REMOVE:I


# instance fields
.field private mCallId:I

.field private mIsExplicitTransfer:Z

.field private mOperation:I

.field private mParticipantUri:Ljava/lang/String;

.field private mSipStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 31
    iput v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    .line 33
    iput v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    return-void
.end method


# virtual methods
.method public getCallId()I
    .locals 0

    .line 43
    iget p0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    return p0
.end method

.method public getIsEct()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    return p0
.end method

.method public getOperation()I
    .locals 0

    .line 51
    iget p0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    return p0
.end method

.method public getParticipantUri()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    return-object p0
.end method

.method public getSipStatus()I
    .locals 0

    .line 59
    iget p0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    return p0
.end method

.method public setCallId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    return-void
.end method

.method public setIsEct(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    return-void
.end method

.method public setOperation(I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    return-void
.end method

.method public setParticipantUri(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    return-void
.end method

.method public setSipStatus(I)V
    .locals 0

    .line 55
    iput p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParticipantStatusDetails callId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sipStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " participantUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isExplicitTransfer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
