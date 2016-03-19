.class public Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;
.super Leaw;
.source "SourceFile"

# interfaces
.implements Lcwe;
.implements Leer;


# static fields
.field public static final a:Z

.field public static volatile f:J

.field public static volatile g:Z

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<",
            "Ldoo;",
            ">;",
            "Leev;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile n:I

.field private static volatile o:I

.field private static volatile p:J

.field private static volatile q:I

.field private static volatile r:Z


# instance fields
.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcwd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Z

.field private k:Landroid/net/ConnectivityManager;

.field private l:Leeq;

.field private final m:Ljava/util/Random;

.field private final s:Landroid/os/IBinder;

.field private t:Leex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    sget-object v0, Lezi;->p:Limx;

    sput-boolean v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    .line 261
    sput-boolean v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->g:Z

    .line 311
    new-instance v0, Lees;

    invoke-direct {v0}, Lees;-><init>()V

    invoke-static {v0}, Laal;->a(Ldju;)V

    .line 1134
    invoke-static {}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->m()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->h:Ljava/util/Map;

    .line 1135
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Leaw;-><init>()V

    .line 245
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    .line 251
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->m:Ljava/util/Random;

    .line 272
    new-instance v0, Leew;

    invoke-direct {v0, p0}, Leew;-><init>(Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->s:Landroid/os/IBinder;

    return-void
.end method

.method public static a(Landroid/os/Bundle;Leez;I)Lcwf;
    .locals 4

    .prologue
    .line 930
    const-string v0, "server_request"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    const-string v0, "server_request"

    .line 932
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 931
    invoke-static {v0}, Lefc;->a([B)Lcwi;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_2

    .line 937
    invoke-static {v0, p2}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Lcwi;I)Lcwf;

    move-result-object v0

    .line 946
    :goto_0
    return-object v0

    .line 939
    :cond_0
    const-string v0, "database_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    const-string v0, "database_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 941
    sget-boolean v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    if-eqz v2, :cond_1

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Generating NetworkQueueItem from EXTRA_DATABASE_ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 944
    :cond_1
    invoke-virtual {p1, v0, v1}, Leez;->b(J)Lcwf;

    move-result-object v0

    goto :goto_0

    .line 946
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcwi;I)Lcwf;
    .locals 3

    .prologue
    .line 8154
    sget-object v0, Ldvp;->e:Ldml;

    invoke-virtual {v0, p1}, Ldml;->b(I)Z

    move-result v1

    .line 953
    invoke-interface {p0}, Lcwi;->a()Ljava/lang/String;

    move-result-object v0

    .line 956
    if-eqz v1, :cond_0

    const-string v1, "event_queue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 957
    const-string v0, "default_queue"

    .line 963
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    new-instance v1, Lcwf;

    invoke-direct {v1, v0, p1, p0}, Lcwf;-><init>(Ljava/lang/String;ILcwi;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;I)Lcwi;
    .locals 2

    .prologue
    .line 914
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 915
    invoke-static {p0}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v1

    .line 914
    invoke-static {v0, v1, p2}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(Landroid/os/Bundle;Leez;I)Lcwf;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Lcwf;->a()Lcwi;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 777
    invoke-static {}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->k()Landroid/content/Intent;

    move-result-object v0

    .line 778
    const-string v1, "backoff_period"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 779
    const/16 v1, 0x67

    .line 781
    invoke-static {v1}, Leyr;->a(I)I

    move-result v1

    const/high16 v2, 0x8000000

    .line 779
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static i()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 279
    const-class v1, Lbdp;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 281
    const-string v1, "babel_max_unexpected_error_retries"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->n:I

    .line 285
    const-string v1, "babel_max_upload_error_retries"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->o:I

    .line 289
    const-string v1, "babel_request_writer_failure_injection_percent"

    invoke-interface {v0, v1, v8, v9}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 293
    sput-wide v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->p:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 294
    const-string v1, "Babel_RequestWriter"

    const-string v2, "******************************************************"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    const-string v1, "Babel_RequestWriter"

    sget-wide v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->p:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x33

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "failureInjectionPercent set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    const-string v1, "Babel_RequestWriter"

    const-string v2, "******************************************************"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_0
    invoke-static {}, Lezc;->a()Z

    move-result v1

    sput-boolean v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->r:Z

    .line 300
    const-string v1, "babel_requestwriter_ms"

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->q:I

    .line 304
    const-string v1, "babel_maximum_request_writer_intent_extra_size"

    invoke-interface {v0, v1, v8, v9}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f:J

    .line 307
    return-void
.end method

.method public static k()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 788
    new-instance v0, Landroid/content/Intent;

    .line 6036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 788
    const-class v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 834
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->r:Z

    if-nez v0, :cond_1

    .line 846
    :cond_0
    return-void

    .line 837
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 838
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwd;

    .line 841
    invoke-interface {v0, v1}, Lcwd;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "don\'t get RequestWriter lock from network queue thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static m()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<",
            "Ldoo;",
            ">;",
            "Leev;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v3, Ljava/util/LinkedList;

    const-class v0, Ldos;

    const-class v1, Ldqk;

    const-class v2, Ldpo;

    const-class v4, Ldsj;

    const-class v5, Ldqc;

    const-class v6, Ldtb;

    const-class v7, Ldop;

    const-class v8, Ldqi;

    const-class v9, Ldpk;

    const-class v10, Ldsb;

    const-class v11, Ldpl;

    const-class v12, Ldsc;

    const/16 v13, 0x70

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ldpq;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ldsn;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-class v15, Ldpr;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-class v15, Ldso;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-class v15, Ldph;

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const-class v15, Ldru;

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-class v15, Ldpm;

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const-class v15, Ldsd;

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-class v15, Ldot;

    aput-object v15, v13, v14

    const/16 v14, 0x9

    const-class v15, Ldqm;

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-class v15, Ldpj;

    aput-object v15, v13, v14

    const/16 v14, 0xb

    const-class v15, Ldrz;

    aput-object v15, v13, v14

    const/16 v14, 0xc

    const-class v15, Ldpz;

    aput-object v15, v13, v14

    const/16 v14, 0xd

    const-class v15, Ldtg;

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-class v15, Ldoz;

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-class v15, Ldra;

    aput-object v15, v13, v14

    const/16 v14, 0x10

    const-class v15, Ldpy;

    aput-object v15, v13, v14

    const/16 v14, 0x11

    const-class v15, Ldtf;

    aput-object v15, v13, v14

    const/16 v14, 0x12

    const-class v15, Ldpe;

    aput-object v15, v13, v14

    const/16 v14, 0x13

    const-class v15, Ldrm;

    aput-object v15, v13, v14

    const/16 v14, 0x14

    const-class v15, Ldov;

    aput-object v15, v13, v14

    const/16 v14, 0x15

    const-class v15, Ldqo;

    aput-object v15, v13, v14

    const/16 v14, 0x16

    const-class v15, Ldqa;

    aput-object v15, v13, v14

    const/16 v14, 0x17

    const-class v15, Ldsy;

    aput-object v15, v13, v14

    const/16 v14, 0x18

    const-class v15, Ldpb;

    aput-object v15, v13, v14

    const/16 v14, 0x19

    const-class v15, Ldrc;

    aput-object v15, v13, v14

    const/16 v14, 0x1a

    const-class v15, Ldqb;

    aput-object v15, v13, v14

    const/16 v14, 0x1b

    const-class v15, Ldsz;

    aput-object v15, v13, v14

    const/16 v14, 0x1c

    const-class v15, Ldpn;

    aput-object v15, v13, v14

    const/16 v14, 0x1d

    const-class v15, Ldsi;

    aput-object v15, v13, v14

    const/16 v14, 0x1e

    const-class v15, Ldpa;

    aput-object v15, v13, v14

    const/16 v14, 0x1f

    const-class v15, Ldrb;

    aput-object v15, v13, v14

    const/16 v14, 0x20

    const-class v15, Ldpt;

    aput-object v15, v13, v14

    const/16 v14, 0x21

    const-class v15, Ldsr;

    aput-object v15, v13, v14

    const/16 v14, 0x22

    const-class v15, Ldpu;

    aput-object v15, v13, v14

    const/16 v14, 0x23

    const-class v15, Ldst;

    aput-object v15, v13, v14

    const/16 v14, 0x24

    const-class v15, Ldpw;

    aput-object v15, v13, v14

    const/16 v14, 0x25

    const-class v15, Ldsv;

    aput-object v15, v13, v14

    const/16 v14, 0x26

    const-class v15, Ldoq;

    aput-object v15, v13, v14

    const/16 v14, 0x27

    const-class v15, Ldqj;

    aput-object v15, v13, v14

    const/16 v14, 0x28

    const-class v15, Ldoe;

    aput-object v15, v13, v14

    const/16 v14, 0x29

    const-class v15, Ldrf;

    aput-object v15, v13, v14

    const/16 v14, 0x2a

    const-class v15, Ldof;

    aput-object v15, v13, v14

    const/16 v14, 0x2b

    const-class v15, Ldrg;

    aput-object v15, v13, v14

    const/16 v14, 0x2c

    const-class v15, Ldob;

    aput-object v15, v13, v14

    const/16 v14, 0x2d

    const-class v15, Ldql;

    aput-object v15, v13, v14

    const/16 v14, 0x2e

    const-class v15, Ldod;

    aput-object v15, v13, v14

    const/16 v14, 0x2f

    const-class v15, Ldre;

    aput-object v15, v13, v14

    const/16 v14, 0x30

    const-class v15, Ldoj;

    aput-object v15, v13, v14

    const/16 v14, 0x31

    const-class v15, Ldse;

    aput-object v15, v13, v14

    const/16 v14, 0x32

    const-class v15, Ldog;

    aput-object v15, v13, v14

    const/16 v14, 0x33

    const-class v15, Ldrs;

    aput-object v15, v13, v14

    const/16 v14, 0x34

    const-class v15, Ldnj;

    aput-object v15, v13, v14

    const/16 v14, 0x35

    const-class v15, Ldqy;

    aput-object v15, v13, v14

    const/16 v14, 0x36

    const-class v15, Ldnp;

    aput-object v15, v13, v14

    const/16 v14, 0x37

    const-class v15, Ldsp;

    aput-object v15, v13, v14

    const/16 v14, 0x38

    const-class v15, Ldnr;

    aput-object v15, v13, v14

    const/16 v14, 0x39

    const-class v15, Ldsp;

    aput-object v15, v13, v14

    const/16 v14, 0x3a

    const-class v15, Ldou;

    aput-object v15, v13, v14

    const/16 v14, 0x3b

    const-class v15, Ldqn;

    aput-object v15, v13, v14

    const/16 v14, 0x3c

    const-class v15, Ldnk;

    aput-object v15, v13, v14

    const/16 v14, 0x3d

    const-class v15, Ldrj;

    aput-object v15, v13, v14

    const/16 v14, 0x3e

    const-class v15, Ldps;

    aput-object v15, v13, v14

    const/16 v14, 0x3f

    const-class v15, Ldsq;

    aput-object v15, v13, v14

    const/16 v14, 0x40

    const-class v15, Ldpx;

    aput-object v15, v13, v14

    const/16 v14, 0x41

    const-class v15, Ldsx;

    aput-object v15, v13, v14

    const/16 v14, 0x42

    const-class v15, Ldoa;

    aput-object v15, v13, v14

    const/16 v14, 0x43

    const-class v15, Ldqg;

    aput-object v15, v13, v14

    const/16 v14, 0x44

    const-class v15, Ldoc;

    aput-object v15, v13, v14

    const/16 v14, 0x45

    const-class v15, Ldqw;

    aput-object v15, v13, v14

    const/16 v14, 0x46

    const-class v15, Ldoh;

    aput-object v15, v13, v14

    const/16 v14, 0x47

    const-class v15, Ldrt;

    aput-object v15, v13, v14

    const/16 v14, 0x48

    const-class v15, Ldoi;

    aput-object v15, v13, v14

    const/16 v14, 0x49

    const-class v15, Ldsa;

    aput-object v15, v13, v14

    const/16 v14, 0x4a

    const-class v15, Ldoy;

    aput-object v15, v13, v14

    const/16 v14, 0x4b

    const-class v15, Ldqu;

    aput-object v15, v13, v14

    const/16 v14, 0x4c

    const-class v15, Ldpp;

    aput-object v15, v13, v14

    const/16 v14, 0x4d

    const-class v15, Ldsl;

    aput-object v15, v13, v14

    const/16 v14, 0x4e

    const-class v15, Ldno;

    aput-object v15, v13, v14

    const/16 v14, 0x4f

    const-class v15, Ldrw;

    aput-object v15, v13, v14

    const/16 v14, 0x50

    const-class v15, Ldnn;

    aput-object v15, v13, v14

    const/16 v14, 0x51

    const-class v15, Ldrv;

    aput-object v15, v13, v14

    const/16 v14, 0x52

    const-class v15, Ldpi;

    aput-object v15, v13, v14

    const/16 v14, 0x53

    const-class v15, Ldry;

    aput-object v15, v13, v14

    const/16 v14, 0x54

    const-class v15, Ldpv;

    aput-object v15, v13, v14

    const/16 v14, 0x55

    const-class v15, Ldsu;

    aput-object v15, v13, v14

    const/16 v14, 0x56

    const-class v15, Ldqd;

    aput-object v15, v13, v14

    const/16 v14, 0x57

    const-class v15, Ldtc;

    aput-object v15, v13, v14

    const/16 v14, 0x58

    const-class v15, Ldow;

    aput-object v15, v13, v14

    const/16 v14, 0x59

    const-class v15, Ldqp;

    aput-object v15, v13, v14

    const/16 v14, 0x5a

    const-class v15, Ldpc;

    aput-object v15, v13, v14

    const/16 v14, 0x5b

    const-class v15, Ldrd;

    aput-object v15, v13, v14

    const/16 v14, 0x5c

    const-class v15, Ldnm;

    aput-object v15, v13, v14

    const/16 v14, 0x5d

    const-class v15, Ldnf;

    aput-object v15, v13, v14

    const/16 v14, 0x5e

    const-class v15, Ldnl;

    aput-object v15, v13, v14

    const/16 v14, 0x5f

    const-class v15, Ldrn;

    aput-object v15, v13, v14

    const/16 v14, 0x60

    const-class v15, Ldni;

    aput-object v15, v13, v14

    const/16 v14, 0x61

    const-class v15, Ldqv;

    aput-object v15, v13, v14

    const/16 v14, 0x62

    const-class v15, Ldna;

    aput-object v15, v13, v14

    const/16 v14, 0x63

    const-class v15, Ldrq;

    aput-object v15, v13, v14

    const/16 v14, 0x64

    const-class v15, Ldmw;

    aput-object v15, v13, v14

    const/16 v14, 0x65

    const-class v15, Ldqq;

    aput-object v15, v13, v14

    const/16 v14, 0x66

    const-class v15, Ldmy;

    aput-object v15, v13, v14

    const/16 v14, 0x67

    const-class v15, Ldqx;

    aput-object v15, v13, v14

    const/16 v14, 0x68

    const-class v15, Ldmz;

    aput-object v15, v13, v14

    const/16 v14, 0x69

    const-class v15, Ldri;

    aput-object v15, v13, v14

    const/16 v14, 0x6a

    const-class v15, Ldmx;

    aput-object v15, v13, v14

    const/16 v14, 0x6b

    const-class v15, Ldqt;

    aput-object v15, v13, v14

    const/16 v14, 0x6c

    const-class v15, Ldmu;

    aput-object v15, v13, v14

    const/16 v14, 0x6d

    const-class v15, Ldqh;

    aput-object v15, v13, v14

    const/16 v14, 0x6e

    const-class v15, Ldpd;

    aput-object v15, v13, v14

    const/16 v14, 0x6f

    const-class v15, Ldrh;

    aput-object v15, v13, v14

    .line 8183
    const/16 v14, 0x7c

    new-array v14, v14, [Ljava/lang/Object;

    .line 8184
    const/4 v15, 0x0

    aput-object v0, v14, v15

    .line 8185
    const/4 v0, 0x1

    aput-object v1, v14, v0

    .line 8186
    const/4 v0, 0x2

    aput-object v2, v14, v0

    .line 8187
    const/4 v0, 0x3

    aput-object v4, v14, v0

    .line 8188
    const/4 v0, 0x4

    aput-object v5, v14, v0

    .line 8189
    const/4 v0, 0x5

    aput-object v6, v14, v0

    .line 8190
    const/4 v0, 0x6

    aput-object v7, v14, v0

    .line 8191
    const/4 v0, 0x7

    aput-object v8, v14, v0

    .line 8192
    const/16 v0, 0x8

    aput-object v9, v14, v0

    .line 8193
    const/16 v0, 0x9

    aput-object v10, v14, v0

    .line 8194
    const/16 v0, 0xa

    aput-object v11, v14, v0

    .line 8195
    const/16 v0, 0xb

    aput-object v12, v14, v0

    .line 8196
    const/4 v0, 0x0

    const/16 v1, 0xc

    const/16 v2, 0x70

    invoke-static {v13, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9225
    const/16 v0, 0x7c

    invoke-static {v14, v0}, Lkxi;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 9291
    array-length v1, v0

    invoke-static {v0, v1}, Lksf;->b([Ljava/lang/Object;I)Lksf;

    move-result-object v0

    .line 1001
    invoke-direct {v3, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1067
    const-class v1, Leeu;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1068
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leeu;

    .line 1069
    invoke-interface {v0}, Leeu;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1072
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v1, "The list of request -> response classes in RequestWriter#makeMapping should contain the request class followed by the response class. However, this list was contained an odd number of classes, so something is wired incorrectly."

    .line 1071
    invoke-static {v0, v1}, Laen;->b(ZLjava/lang/Object;)V

    .line 1077
    new-instance v4, Lhq;

    invoke-direct {v4}, Lhq;-><init>()V

    .line 1079
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 1080
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1081
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1083
    new-instance v5, Leev;

    invoke-direct {v5}, Leev;-><init>()V

    .line 1084
    iput-object v1, v5, Leev;->a:Ljava/lang/Class;

    .line 1088
    const-class v6, Ldpf;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    :try_start_0
    const-string v6, "parseFrom"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, [B

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, v5, Leev;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :cond_1
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_2

    .line 1072
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1091
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1092
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1093
    const-string v3, "Babel_RequestWriter"

    const-string v4, "Ensure that proguard.flags is not automatically removing parseFrom from "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Couldn\'t find parseFrom method for "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1093
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1097
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1103
    :cond_5
    return-object v4
.end method


# virtual methods
.method public H_()Z
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Leaw;->J_()Z

    move-result v0

    return v0
.end method

.method public I_()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Leaw;->d()V

    .line 432
    return-void
.end method

.method protected a()I
    .locals 1

    .prologue
    .line 333
    sget v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->q:I

    return v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwd;

    .line 886
    invoke-interface {v0, p1, p2}, Lcwd;->a(J)V

    .line 887
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcwd;->a(Z)V

    goto :goto_0

    .line 889
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 537
    if-nez p1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    if-eqz v0, :cond_2

    .line 541
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "queue network request directly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_2
    const-string v0, "timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->J_()Z

    move-result v0

    if-nez v0, :cond_3

    .line 548
    const-string v0, "Babel_RequestWriter"

    const-string v1, "tryRetainService failed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 552
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 555
    iget-object v1, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->t:Leex;

    iget-object v1, v1, Leex;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "Babel_RequestWriter"

    const-string v1, "mHandler.sendMessage returned false"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcwf;)V
    .locals 6

    .prologue
    .line 893
    iget-object v0, p1, Lcwf;->a:Lcwk;

    iget-wide v0, v0, Lcwk;->a:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NetworkQueueItem being queued must have a valid row ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcwf;->a:Lcwk;

    iget-wide v2, v0, Lcwk;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 895
    iget-object v0, p1, Lcwf;->a:Lcwk;

    iget-object v1, v0, Lcwk;->b:Ljava/lang/String;

    .line 897
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->l()V

    .line 898
    monitor-enter p0

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwd;

    .line 901
    if-nez v0, :cond_0

    .line 902
    iget-object v0, p1, Lcwf;->a:Lcwk;

    iget v0, v0, Lcwk;->c:I

    .line 6970
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f()Landroid/content/Context;

    .line 7580
    sget-object v2, Ldvp;->T:Ldml;

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v0

    .line 6970
    if-eqz v0, :cond_2

    .line 6971
    new-instance v0, Lcvy;

    invoke-direct {v0, v1, p0}, Lcvy;-><init>(Ljava/lang/String;Lcwe;)V

    .line 6975
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6976
    invoke-interface {v0}, Lcwd;->a()V

    .line 904
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {p1}, Lcwf;->a()Lcwi;

    move-result-object v1

    invoke-interface {v1}, Lcwi;->E_()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcwd;->a(Lcwf;Z)V

    .line 908
    return-void

    .line 893
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6973
    :cond_2
    :try_start_1
    new-instance v0, Lcwb;

    invoke-direct {v0, v1, p0}, Lcwb;-><init>(Ljava/lang/String;Lcwe;)V

    goto :goto_1

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 849
    if-nez p1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 858
    if-eqz v1, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->l()V

    .line 862
    monitor-enter p0

    .line 863
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwd;

    .line 864
    invoke-interface {v0, v1, p2}, Lcwd;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 3830
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j()Z

    .line 4468
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcwo;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwo;

    .line 4469
    invoke-interface {v0, p1}, Lcwo;->a(Z)V

    .line 461
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j:Z

    return v0
.end method

.method public c()Lcwm;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leez;->a(Landroid/content/Context;)Leez;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 436
    sget-wide v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->m:Ljava/util/Random;

    const/16 v1, 0x64

    .line 437
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->p:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 405
    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j:Z

    .line 406
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j:Z

    .line 407
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j:Z

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    if-eqz v0, :cond_0

    .line 408
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "network: updateNetworkAvailable was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j:Z

    return v0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->h()V

    .line 475
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->s:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 340
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RequestWriter.onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    :cond_0
    invoke-super {p0}, Leaw;->onCreate()V

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgqa;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lfhq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfhp; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    :goto_0
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 365
    :goto_1
    if-eqz v0, :cond_4

    .line 367
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 369
    sget-object v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1, v7, v4, v5}, Laal;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ILjava/util/Set;)Z

    move-result v1

    and-int/2addr v1, v2

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leev;

    iget-object v0, v0, Leev;->a:Ljava/lang/Class;

    invoke-static {v0, v7, v4, v5}, Laal;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ILjava/util/Set;)Z

    move-result v0

    and-int/2addr v0, v1

    move v2, v0

    .line 372
    goto :goto_2

    .line 352
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Lfhq;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 357
    invoke-static {v1, v2}, Lfhr;->a(ILandroid/content/Context;)V

    .line 359
    const-string v1, "Babel_RequestWriter"

    const-string v2, "GPS repairable exception when trying to installIfNeeded"

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    const-string v1, "Babel_RequestWriter"

    const-string v2, "GPS not available when trying to installIfNeeded"

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v0, v4

    .line 364
    goto :goto_1

    .line 373
    :cond_3
    if-nez v2, :cond_4

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all ServerRequest and ServerResponse classes are set up correctly for serialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_4
    new-instance v0, Leex;

    .line 2495
    invoke-direct {v0, p0}, Leex;-><init>(Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;)V

    .line 381
    iput-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->t:Leex;

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->t:Leex;

    invoke-virtual {v0}, Leex;->start()V

    .line 384
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->k:Landroid/net/ConnectivityManager;

    .line 385
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->j()Z

    .line 3113
    new-instance v0, Leeq;

    .line 3114
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Leeq;-><init>(Lilh;Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;)V

    .line 3115
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3116
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    iput-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->l:Leeq;

    .line 390
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->h()V

    .line 392
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 393
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 394
    iget-object v1, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->t:Leex;

    iget-object v1, v1, Leex;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 400
    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->b(J)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 401
    return-void
.end method

.method public onDestroy()V
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 737
    invoke-super {p0}, Leaw;->onDestroy()V

    .line 739
    const-wide/16 v0, 0x1f4

    .line 741
    iget-object v2, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->t:Leex;

    iget-object v2, v2, Leex;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 743
    iget-object v2, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    move-wide v4, v6

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwd;

    .line 744
    invoke-interface {v0}, Lcwd;->d()V

    .line 745
    invoke-interface {v0}, Lcwd;->b()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 747
    invoke-interface {v0}, Lcwd;->c()I

    move-result v1

    if-lez v1, :cond_4

    .line 748
    invoke-interface {v0}, Lcwd;->e()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    .line 750
    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 753
    sget-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a:Z

    if-eqz v0, :cond_1

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Recycling request writer. Will restart after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 759
    :cond_1
    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    .line 762
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 763
    const/4 v1, 0x3

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 766
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->b(J)Landroid/app/PendingIntent;

    move-result-object v2

    .line 763
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 767
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->g:Z

    .line 773
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->l:Leeq;

    .line 5128
    if-eqz v0, :cond_2

    .line 5129
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 774
    :cond_2
    return-void

    .line 770
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->g:Z

    goto :goto_2

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->h()V

    .line 481
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 706
    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p0, p3}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->a(I)V

    .line 715
    const-string v0, "timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 716
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 719
    iget-object v1, p0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->t:Leex;

    iget-object v1, v1, Leex;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    const-string v0, "Babel_RequestWriter"

    const-string v1, "mHandler.sendMessage returned false"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->d()V

    .line 492
    const/4 v0, 0x1

    return v0
.end method
