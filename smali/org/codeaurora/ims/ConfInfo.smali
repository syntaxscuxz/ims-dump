.class public final Lorg/codeaurora/ims/ConfInfo;
.super Ljava/lang/Object;
.source "ConfInfo.java"


# static fields
.field public static final BACKGROUND:I = 0x2

.field public static final FOREGROUND:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final RINGING:I


# instance fields
.field private mConfCallState:I

.field private mConfInfoUri:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/codeaurora/ims/ConfInfo;->mConfInfoUri:[B

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lorg/codeaurora/ims/ConfInfo;->mConfCallState:I

    return-void
.end method


# virtual methods
.method public getConfCallState()I
    .locals 0

    .line 32
    iget p0, p0, Lorg/codeaurora/ims/ConfInfo;->mConfCallState:I

    return p0
.end method

.method public getConfInfoUri()[B
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/codeaurora/ims/ConfInfo;->mConfInfoUri:[B

    return-object p0
.end method

.method public setConfCallState(I)V
    .locals 0

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/ConfInfo;->mConfCallState:I

    return-void
.end method

.method public setConfInfoUri(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lorg/codeaurora/ims/ImsUtils;->toByteArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ConfInfo;->mConfInfoUri:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conf call state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ConfInfo;->mConfCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Conf info uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/ConfInfo;->mConfInfoUri:[B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
