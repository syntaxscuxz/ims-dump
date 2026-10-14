.class public Lorg/codeaurora/ims/ImsRilException;
.super Lorg/codeaurora/ims/QtiImsException;
.source "ImsRilException.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    .line 19
    iput p1, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 14
    iget p0, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    return p0
.end method
