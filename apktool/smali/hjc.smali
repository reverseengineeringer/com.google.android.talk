.class final Lhjc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lhjb;

.field final synthetic b:Lhiy;

.field private final c:Lhca;


# direct methods
.method constructor <init>(Lhiy;Lhca;Lhjb;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lhjc;->b:Lhiy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 272
    iput-object p2, p0, Lhjc;->c:Lhca;

    .line 273
    iput-object p3, p0, Lhjc;->a:Lhjb;

    .line 274
    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lhjc;->c:Lhca;

    iget-object v1, p0, Lhjc;->b:Lhiy;

    .line 1050
    iget-object v1, v1, Lhiy;->a:Landroid/content/Context;

    .line 279
    const-string v2, "oauth2:https://www.googleapis.com/auth/hangouts "

    invoke-virtual {v0, v1, v2}, Lhca;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lfgj; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    :goto_1
    const-string v1, "vclib"

    const-string v2, "Failed to get credentials for user"

    .line 1097
    const/4 v3, 0x5

    invoke-static {v3, v1, v2, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lhjc;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 267
    check-cast p1, Ljava/lang/String;

    .line 1292
    if-nez p1, :cond_0

    .line 1293
    iget-object v0, p0, Lhjc;->a:Lhjb;

    invoke-interface {v0}, Lhjb;->a()V

    .line 1294
    :goto_0
    return-void

    .line 1299
    :cond_0
    new-instance v0, Lhgv;

    iget-object v1, p0, Lhjc;->b:Lhiy;

    .line 2050
    iget-object v1, v1, Lhiy;->a:Landroid/content/Context;

    .line 1299
    iget-object v2, p0, Lhjc;->b:Lhiy;

    .line 3050
    iget-object v2, v2, Lhiy;->a:Landroid/content/Context;

    .line 1299
    invoke-static {v2}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhgv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lhgv;->a(Ljava/lang/String;J)V

    .line 1305
    new-instance v1, Ljxm;

    invoke-direct {v1}, Ljxm;-><init>()V

    .line 1306
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Ljxm;->a:Ljava/lang/Integer;

    .line 1307
    iget-object v2, p0, Lhjc;->b:Lhiy;

    .line 4050
    iget-object v2, v2, Lhiy;->a:Landroid/content/Context;

    .line 1307
    invoke-static {v2}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Ljxm;->d:Ljava/lang/Long;

    .line 1309
    new-instance v2, Ljxj;

    invoke-direct {v2}, Ljxj;-><init>()V

    .line 1311
    new-instance v3, Lhhe;

    iget-object v4, p0, Lhjc;->b:Lhiy;

    .line 5050
    iget-object v4, v4, Lhiy;->a:Landroid/content/Context;

    .line 1311
    invoke-direct {v3, v4, v0}, Lhhe;-><init>(Landroid/content/Context;Lhgv;)V

    .line 1312
    invoke-virtual {v3, v1}, Lhhe;->a(Ljxm;)V

    .line 1313
    invoke-virtual {v3, v2}, Lhhe;->a(Ljxj;)V

    .line 1315
    new-instance v0, Lkhg;

    invoke-direct {v0}, Lkhg;-><init>()V

    .line 1316
    new-array v1, v6, [Lkhf;

    iput-object v1, v0, Lkhg;->c:[Lkhf;

    .line 1317
    iget-object v1, v0, Lkhg;->c:[Lkhf;

    new-instance v2, Lkhf;

    invoke-direct {v2}, Lkhf;-><init>()V

    aput-object v2, v1, v5

    .line 1318
    iget-object v1, v0, Lkhg;->c:[Lkhf;

    aget-object v1, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lkhf;->b:Ljava/lang/Integer;

    .line 1320
    iget-object v1, v0, Lkhg;->c:[Lkhf;

    aget-object v1, v1, v5

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lkhf;->o:Ljava/lang/Integer;

    .line 1322
    const-string v1, "hangouts/add"

    const-class v2, Lkhh;

    new-instance v4, Lhjd;

    invoke-direct {v4, p0}, Lhjd;-><init>(Lhjc;)V

    invoke-virtual {v3, v1, v0, v2, v4}, Lhhe;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V

    goto :goto_0
.end method
