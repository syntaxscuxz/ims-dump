.class public Lorg/codeaurora/ims/CallModify;
.super Ljava/lang/Object;
.source "CallModify.java"


# static fields
.field public static E_CANCELLED:I = 0x7

.field public static E_SUCCESS:I = 0x0

.field public static E_UNUSED:I = 0x10


# instance fields
.field public call_details:Lorg/codeaurora/ims/CallDetails;

.field public call_index:I

.field public error:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;I)V
    .locals 1

    .line 25
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;II)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 30
    iput p2, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 31
    iput p3, p0, Lorg/codeaurora/ims/CallModify;->error:I

    return-void
.end method


# virtual methods
.method public error()Z
    .locals 1

    .line 42
    iget p0, p0, Lorg/codeaurora/ims/CallModify;->error:I

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/CallDetails;)V
    .locals 1

    .line 35
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codeaurora/ims/CallModify;->error:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
