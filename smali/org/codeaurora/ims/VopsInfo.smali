.class public final Lorg/codeaurora/ims/VopsInfo;
.super Ljava/lang/Object;
.source "VopsInfo.java"


# instance fields
.field private mVopsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/codeaurora/ims/VopsInfo;->mVopsEnabled:Z

    return-void
.end method


# virtual methods
.method public isVopsEnabled()Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lorg/codeaurora/ims/VopsInfo;->mVopsEnabled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VopsInfo vopsEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/codeaurora/ims/VopsInfo;->mVopsEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
