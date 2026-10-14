.class public final Lorg/codeaurora/ims/UssdInfo;
.super Ljava/lang/Object;
.source "UssdInfo.java"


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    .line 38
    iput-object p2, p0, Lorg/codeaurora/ims/UssdInfo;->mMessage:Ljava/lang/String;

    const p1, 0x7fffffff

    if-ne p3, p1, :cond_0

    const/4 p3, -0x1

    .line 40
    :cond_0
    iput p3, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    .line 41
    iput-object p4, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 56
    iget p0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/codeaurora/ims/UssdInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 46
    iget p0, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UssdInfo type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/UssdInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
