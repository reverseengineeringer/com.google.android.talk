.class public final Latr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Latr;


# instance fields
.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Latp;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbg;",
            "Latt;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lahw;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Latr;

    invoke-direct {v0}, Latr;-><init>()V

    sput-object v0, Latr;->a:Latr;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Latr;->b:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Latr;->c:Ljava/util/Map;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Latr;->e:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;Lbg;Lav;)Lahw;
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0, p2, p3}, Latr;->a(Lbg;Lav;)Latt;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Latt;->b()Lahw;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lahw;

    .line 218
    invoke-virtual {v1}, Latt;->a()Latf;

    move-result-object v2

    invoke-virtual {v1}, Latt;->c()Latn;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lahw;-><init>(Landroid/content/Context;Latm;Latn;)V

    .line 219
    invoke-virtual {v1, v0}, Latt;->a(Lahw;)V

    .line 221
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)Lahw;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Latr;->d:Lahw;

    if-nez v0, :cond_1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Latr;->d:Lahw;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lahw;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Latg;

    invoke-direct {v2}, Latg;-><init>()V

    new-instance v3, Latl;

    invoke-direct {v3}, Latl;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lahw;-><init>(Landroid/content/Context;Latm;Latn;)V

    iput-object v0, p0, Latr;->d:Lahw;

    .line 89
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    iget-object v0, p0, Latr;->d:Lahw;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lahw;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    invoke-static {}, Lavq;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_7

    .line 99
    instance-of v0, p1, Lba;

    if-eqz v0, :cond_3

    .line 100
    check-cast p1, Lba;

    .line 1112
    invoke-static {}, Lavq;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1113
    invoke-virtual {p1}, Lba;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v0

    .line 1137
    :cond_1
    :goto_0
    return-object v0

    .line 1115
    :cond_2
    invoke-static {p1}, Latr;->a(Landroid/app/Activity;)V

    .line 1116
    invoke-virtual {p1}, Lba;->C_()Lbg;

    move-result-object v0

    .line 1117
    invoke-direct {p0, p1, v0, v2}, Latr;->a(Landroid/content/Context;Lbg;Lav;)Lahw;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_3
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 102
    check-cast p1, Landroid/app/Activity;

    .line 1136
    invoke-static {}, Lavq;->c()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_5

    .line 1137
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v0

    goto :goto_0

    .line 1139
    :cond_5
    invoke-static {p1}, Latr;->a(Landroid/app/Activity;)V

    .line 1140
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1186
    invoke-virtual {p0, v0, v2}, Latr;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Latp;

    move-result-object v1

    .line 1187
    invoke-virtual {v1}, Latp;->b()Lahw;

    move-result-object v0

    .line 1188
    if-nez v0, :cond_1

    .line 1189
    new-instance v0, Lahw;

    .line 1190
    invoke-virtual {v1}, Latp;->a()Latf;

    move-result-object v2

    invoke-virtual {v1}, Latp;->c()Latn;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lahw;-><init>(Landroid/content/Context;Latm;Latn;)V

    .line 1191
    invoke-virtual {v1, v0}, Latp;->a(Lahw;)V

    goto :goto_0

    .line 103
    :cond_6
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_7

    .line 104
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_7
    invoke-direct {p0, p1}, Latr;->b(Landroid/content/Context;)Lahw;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lav;)Lahw;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p1}, Lav;->getActivity()Lba;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-static {}, Lavq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lav;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_1
    invoke-virtual {p1}, Lav;->getChildFragmentManager()Lbg;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lav;->getActivity()Lba;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Latr;->a(Landroid/content/Context;Lbg;Lav;)Lahw;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Latp;
    .locals 3

    .prologue
    .line 169
    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Latp;

    .line 170
    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Latr;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latp;

    .line 172
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Latp;

    invoke-direct {v0}, Latp;-><init>()V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Latp;->a(Landroid/app/Fragment;)V

    .line 175
    iget-object v1, p0, Latr;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 177
    iget-object v1, p0, Latr;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    :cond_0
    return-object v0
.end method

.method a(Lbg;Lav;)Latt;
    .locals 3

    .prologue
    .line 198
    const-string v0, "com.bumptech.glide.manager"

    .line 199
    invoke-virtual {p1, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Latt;

    .line 200
    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Latr;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latt;

    .line 202
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Latt;

    invoke-direct {v0}, Latt;-><init>()V

    .line 204
    invoke-virtual {v0, p2}, Latt;->a(Lav;)V

    .line 205
    iget-object v1, p0, Latr;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {p1}, Lbg;->a()Lbz;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Lbz;->a(Lav;Ljava/lang/String;)Lbz;

    move-result-object v1

    invoke-virtual {v1}, Lbz;->c()I

    .line 207
    iget-object v1, p0, Latr;->e:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 210
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 226
    const/4 v2, 0x1

    .line 229
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 241
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    .line 244
    :goto_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const-string v1, "RMRetriever"

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    return v2

    .line 231
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    .line 233
    iget-object v1, p0, Latr;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbg;

    .line 238
    iget-object v1, p0, Latr;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
