.class public final synthetic Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;->f$0:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    iput p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;->f$0:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Lorg/codeaurora/ims/internal/IVideoCallProviderListener;

    invoke-static {v0, v1, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->$r8$lambda$u-APQWV9Kwf8LSxHjE7QHd5GJFc(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;IILorg/codeaurora/ims/internal/IVideoCallProviderListener;)V

    return-void
.end method
