.class public Lorg/codeaurora/ims/CheckinEvent;
.super Ljava/lang/Object;
.source "CheckinEvent.java"


# static fields
.field private static final CLASS_CHECKIN_EVENT:Ljava/lang/String; = "com.motorola.android.provider.CheckinEvent"

.field private static final CLASS_EVENT:Ljava/lang/String; = "com.motorola.data.event.api.Event"

.field private static final METHOD_GET_EVENT_NAME:Ljava/lang/String; = "getEventName"

.field private static final METHOD_GET_TAG_NAME:Ljava/lang/String; = "getTagName"

.field private static final METHOD_GET_TIMESTAMP:Ljava/lang/String; = "getTimestamp"

.field private static final METHOD_GET_VERSION:Ljava/lang/String; = "getVersion"

.field private static final METHOD_PUBLISH:Ljava/lang/String; = "publish"

.field private static final METHOD_SERIALIZE_EVENT:Ljava/lang/String; = "serializeEvent"

.field private static final METHOD_SET_VALUE:Ljava/lang/String; = "setValue"

.field static final NULL_STR:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String; = "CheckinEvent"

.field private static sConstructorCheckinEvent:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sConstructorCheckinEventTimestamp:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sInitialized:Z = false

.field private static sMethodGetEventName:Ljava/lang/reflect/Method;

.field private static sMethodGetTagName:Ljava/lang/reflect/Method;

.field private static sMethodGetTimestamp:Ljava/lang/reflect/Method;

.field private static sMethodGetVersion:Ljava/lang/reflect/Method;

.field private static sMethodPublish:Ljava/lang/reflect/Method;

.field private static sMethodSerializeEvent:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueBoolean:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueDouble:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueInt:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueLong:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueString:Ljava/lang/reflect/Method;


# instance fields
.field private final mReflectedCheckinEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    const-string v0, "setValue"

    const/4 v1, 0x0

    .line 56
    :try_start_0
    const-string v2, "com.motorola.data.event.api.Event"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 57
    const-string v3, "com.motorola.android.provider.CheckinEvent"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    .line 60
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sput-object v5, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEvent:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x4

    .line 62
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEventTimestamp:Ljava/lang/reflect/Constructor;

    .line 66
    const-string v4, "getEventName"

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetEventName:Ljava/lang/reflect/Method;

    .line 67
    const-string v4, "getTagName"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTagName:Ljava/lang/reflect/Method;

    .line 68
    const-string v4, "getTimestamp"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTimestamp:Ljava/lang/reflect/Method;

    .line 69
    const-string v4, "getVersion"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetVersion:Ljava/lang/reflect/Method;

    .line 70
    const-string v4, "serializeEvent"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSerializeEvent:Ljava/lang/reflect/Method;

    .line 71
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueBoolean:Ljava/lang/reflect/Method;

    .line 73
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueDouble:Ljava/lang/reflect/Method;

    .line 75
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueInt:Ljava/lang/reflect/Method;

    .line 77
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueLong:Ljava/lang/reflect/Method;

    .line 79
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueString:Ljava/lang/reflect/Method;

    .line 83
    const-string v0, "publish"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodPublish:Ljava/lang/reflect/Method;

    .line 85
    sput-boolean v7, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 87
    :catchall_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get checkin class."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sput-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEvent:Ljava/lang/reflect/Constructor;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    sget-object p1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p2, "Unable to instantiate CheckinEvent."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    iput-object p1, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 124
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEventTimestamp:Ljava/lang/reflect/Constructor;

    .line 127
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    sget-object p1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p2, "Unable to instantiate CheckinEvent."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 132
    :goto_0
    iput-object p1, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 139
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    return v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 2

    .line 147
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 149
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetEventName:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 151
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get event name."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    .line 162
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 164
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTagName:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 166
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get tag name."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 177
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 179
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTimestamp:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 182
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get timestamp."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 193
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 195
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetVersion:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 197
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get version."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method public publish(Landroid/content/ContentResolver;)V
    .locals 1

    .line 312
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodPublish:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 316
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p1, "Unable to publish."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public serializeEvent()Ljava/lang/StringBuilder;
    .locals 2

    .line 211
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 213
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSerializeEvent:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 215
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v0, "Unable to serialize event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method public setValue(Ljava/lang/String;D)V
    .locals 1

    .line 244
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 246
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueDouble:Ljava/lang/reflect/Method;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 248
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p1, "Unable to set value."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1

    .line 260
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 262
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueInt:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 264
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p1, "Unable to set value."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;J)V
    .locals 1

    .line 276
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 278
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueLong:Ljava/lang/reflect/Method;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 280
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p1, "Unable to set value."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 292
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    .line 294
    const-string p2, "null"

    .line 297
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueString:Ljava/lang/reflect/Method;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 299
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p1, "Unable to set value."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 1

    .line 228
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 230
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueBoolean:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 232
    :catchall_0
    sget-object p0, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string p1, "Unable to set value."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
