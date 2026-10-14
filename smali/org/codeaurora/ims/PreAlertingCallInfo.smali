.class public final Lorg/codeaurora/ims/PreAlertingCallInfo;
.super Ljava/lang/Object;
.source "PreAlertingCallInfo.java"


# instance fields
.field private mCallId:I

.field mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

.field mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

.field private mIsDcCall:Z

.field private mModemCallId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    .line 35
    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/CallComposerInfo;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCallId:I

    .line 41
    iput-object p2, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 42
    iput-object p3, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    .line 43
    iput p4, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mModemCallId:I

    .line 44
    iput-boolean p5, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mIsDcCall:Z

    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/EcnamInfo;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .line 31
    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    return-void
.end method


# virtual methods
.method public getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-object p0
.end method

.method public getCallId()I
    .locals 0

    .line 51
    iget p0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCallId:I

    return p0
.end method

.method public getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    return-object p0
.end method

.method public getIsDcCall()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mIsDcCall:Z

    return p0
.end method

.method public getModemCallId()I
    .locals 0

    .line 72
    iget p0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mModemCallId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreAlertingCallInfo CallId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " CallComposerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " EcnamInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ModemCallId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mModemCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " IsDcCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mIsDcCall:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
