.class public final synthetic Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m()V
    .locals 2

    .line 0
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Overflow in the size of parcelable"

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic m(Ljava/lang/String;)V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
