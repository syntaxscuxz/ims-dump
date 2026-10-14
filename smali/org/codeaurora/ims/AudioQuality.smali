.class public final Lorg/codeaurora/ims/AudioQuality;
.super Ljava/lang/Object;
.source "AudioQuality.java"


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field private mCodec:I

.field private mComputedAudioQuality:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    .line 41
    iput p2, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/AudioQuality;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/AudioQuality;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/AudioQuality;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 70
    :cond_1
    check-cast p1, Lorg/codeaurora/ims/AudioQuality;

    .line 71
    iget v1, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget p0, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    .line 72
    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCodec()I
    .locals 0

    .line 50
    iget p0, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    return p0
.end method

.method public getComputedAudioQuality()I
    .locals 0

    .line 59
    iget p0, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioQuality codec : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " computed audio quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
