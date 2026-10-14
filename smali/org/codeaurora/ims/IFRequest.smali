.class Lorg/codeaurora/ims/IFRequest;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lorg/codeaurora/ims/IFRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mData:[B

.field mNext:Lorg/codeaurora/ims/IFRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;
    .locals 4

    .line 107
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 110
    iget-object v3, v1, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    sput-object v3, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 111
    iput-object v2, v1, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 112
    sget v2, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v1, v2

    .line 114
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Lorg/codeaurora/ims/IFRequest;

    invoke-direct {v1}, Lorg/codeaurora/ims/IFRequest;-><init>()V

    .line 120
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_1
    sget v0, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    add-int/lit8 v3, v0, 0x1

    sput v3, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    iput v0, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 122
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    iput p0, v1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 124
    iput-object p1, v1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 127
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Message target must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v1

    :catchall_1
    move-exception p0

    .line 122
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 114
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method static resetSerial()V
    .locals 2

    .line 156
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 157
    :try_start_0
    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-direct {v1, p1, v0}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 190
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 191
    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p2, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 196
    iget-object p0, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .line 142
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    sget v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 144
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    iput-object v2, p0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 145
    sput-object p0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    add-int/lit8 v1, v1, 0x1

    .line 146
    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    .line 149
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method serialString()Ljava/lang/String;
    .locals 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    iget p0, p0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x5b

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    rsub-int/lit8 v3, v1, 0x4

    if-ge v2, v3, :cond_0

    const/16 v3, 0x30

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setResult(Landroid/os/Message;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    return-void
.end method
