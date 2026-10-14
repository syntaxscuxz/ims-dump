.class Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;
.super Ljava/lang/Object;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingEmergencyCallInfo"
.end annotation


# instance fields
.field private mCallDetails:Lorg/codeaurora/ims/CallDetails;

.field private mCallee:Ljava/lang/String;

.field private mClir:I

.field private mComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

.field private mEmergencyCallInfo:Lorg/codeaurora/ims/EmergencyCallInfo;

.field private mIsEncrypted:Z

.field private mRedialInfo:Lorg/codeaurora/ims/RedialInfo;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallee:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mEmergencyCallInfo:Lorg/codeaurora/ims/EmergencyCallInfo;

    .line 215
    iput p4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mClir:I

    .line 216
    iput-object p5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallDetails:Lorg/codeaurora/ims/CallDetails;

    .line 217
    iput-object p6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 218
    iput-object p7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mRedialInfo:Lorg/codeaurora/ims/RedialInfo;

    .line 219
    iput-boolean p8, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mIsEncrypted:Z

    return-void
.end method


# virtual methods
.method public getCallDetails()Lorg/codeaurora/ims/CallDetails;
    .locals 0

    .line 247
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallDetails:Lorg/codeaurora/ims/CallDetails;

    return-object p0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallee:Ljava/lang/String;

    return-object p0
.end method

.method public getClir()I
    .locals 0

    .line 239
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mClir:I

    return p0
.end method

.method public getComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;
    .locals 0

    .line 255
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-object p0
.end method

.method public getEmergencyCallInfo()Lorg/codeaurora/ims/EmergencyCallInfo;
    .locals 0

    .line 231
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mEmergencyCallInfo:Lorg/codeaurora/ims/EmergencyCallInfo;

    return-object p0
.end method

.method public getIsEncrypted()Z
    .locals 0

    .line 271
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mIsEncrypted:Z

    return p0
.end method

.method public getRedialInfo()Lorg/codeaurora/ims/RedialInfo;
    .locals 0

    .line 263
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mRedialInfo:Lorg/codeaurora/ims/RedialInfo;

    return-object p0
.end method

.method public resetPendingEmergencyCallInfo()V
    .locals 2

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallee:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mEmergencyCallInfo:Lorg/codeaurora/ims/EmergencyCallInfo;

    const/4 v1, -0x1

    .line 281
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mClir:I

    .line 282
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallDetails:Lorg/codeaurora/ims/CallDetails;

    .line 283
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 284
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mRedialInfo:Lorg/codeaurora/ims/RedialInfo;

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mIsEncrypted:Z

    return-void
.end method

.method public setCallDetails(Lorg/codeaurora/ims/CallDetails;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallDetails:Lorg/codeaurora/ims/CallDetails;

    return-void
.end method

.method public setCallee(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mCallee:Ljava/lang/String;

    return-void
.end method

.method public setClir(I)V
    .locals 0

    .line 243
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mClir:I

    return-void
.end method

.method public setComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-void
.end method

.method public setEmergencyCallInfo(Lorg/codeaurora/ims/EmergencyCallInfo;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mEmergencyCallInfo:Lorg/codeaurora/ims/EmergencyCallInfo;

    return-void
.end method

.method public setIsEncrypted(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mIsEncrypted:Z

    return-void
.end method

.method public setRedialInfo(Lorg/codeaurora/ims/RedialInfo;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->mRedialInfo:Lorg/codeaurora/ims/RedialInfo;

    return-void
.end method
