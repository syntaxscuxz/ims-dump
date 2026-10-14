.class public final Lorg/codeaurora/ims/CrsData;
.super Ljava/lang/Object;
.source "CrsData.java"


# instance fields
.field private mCrsType:I

.field private mOriginalCallType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 20
    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/CrsData;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    .line 30
    iput p2, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CrsData;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/CrsData;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/CrsData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 41
    :cond_1
    check-cast p1, Lorg/codeaurora/ims/CrsData;

    .line 42
    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget p0, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    .line 43
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCrsType()I
    .locals 0

    .line 47
    iget p0, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    return p0
.end method

.method public getOriginalCallType()I
    .locals 0

    .line 51
    iget p0, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    return p0
.end method

.method public setCrsType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    return-void
.end method

.method public setOriginalCallType(I)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CrsData crsType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " originalCallType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lorg/codeaurora/ims/CrsData;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 67
    :cond_0
    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 68
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    move v0, v3

    .line 72
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 73
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    return v3

    :cond_2
    return v0
.end method
