.class public Lorg/codeaurora/ims/sms/SmsResponse;
.super Ljava/lang/Object;
.source "SmsResponse.java"


# instance fields
.field private final mMessageRef:I

.field private final mNetworkErrorCode:I

.field private final mRat:I

.field private final mSendSmsReason:I

.field private final mSendSmsResult:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mMessageRef:I

    .line 29
    iput p2, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsResult:I

    .line 30
    iput p3, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsReason:I

    .line 31
    iput p4, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mNetworkErrorCode:I

    .line 32
    iput p5, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mRat:I

    return-void
.end method


# virtual methods
.method public getMsgRef()I
    .locals 0

    .line 36
    iget p0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mMessageRef:I

    return p0
.end method

.method public getNetworkErrorCode()I
    .locals 0

    .line 48
    iget p0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mNetworkErrorCode:I

    return p0
.end method

.method public getRat()I
    .locals 0

    .line 52
    iget p0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mRat:I

    return p0
.end method

.method public getReason()I
    .locals 0

    .line 44
    iget p0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsReason:I

    return p0
.end method

.method public getResult()I
    .locals 0

    .line 40
    iget p0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsResult:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ mMessageRef = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mMessageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSendSmsResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSendSmsReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mNetworkErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mRat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
