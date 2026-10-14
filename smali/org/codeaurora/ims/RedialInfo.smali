.class public Lorg/codeaurora/ims/RedialInfo;
.super Ljava/lang/Object;
.source "RedialInfo.java"


# instance fields
.field private retryCallFailCause:I

.field private retryCallFailRadioTech:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailCause:I

    .line 17
    iput p2, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailRadioTech:I

    return-void
.end method


# virtual methods
.method public getRetryCallFailCause()I
    .locals 0

    .line 21
    iget p0, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailCause:I

    return p0
.end method

.method public getRetryCallFailRadioTech()I
    .locals 0

    .line 25
    iget p0, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailRadioTech:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RedialInfo: retryCallFailCause = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retryCallFailRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailRadioTech:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
