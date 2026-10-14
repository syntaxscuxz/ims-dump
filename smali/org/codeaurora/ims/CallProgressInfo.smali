.class public final Lorg/codeaurora/ims/CallProgressInfo;
.super Ljava/lang/Object;
.source "CallProgressInfo.java"


# instance fields
.field private mReasonCode:I

.field private mReasonText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    .line 30
    iput v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    .line 44
    iput p2, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    .line 45
    iput-object p3, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallProgressInfo;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/codeaurora/ims/CallProgressInfo;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/CallProgressInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 56
    :cond_1
    check-cast p1, Lorg/codeaurora/ims/CallProgressInfo;

    .line 57
    iget v1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    .line 58
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getReasonCode()I
    .locals 0

    .line 67
    iget p0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    return p0
.end method

.method public getReasonText()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 63
    iget p0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    return p0
.end method

.method public setReasonCode(I)V
    .locals 0

    .line 79
    iput p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    return-void
.end method

.method public setReasonText(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 75
    iput p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallProgressInfo Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Reason code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Reason Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
