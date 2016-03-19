.class final Ldfw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldfv;


# direct methods
.method constructor <init>(Ldfv;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Ldfw;->a:Ldfv;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const-wide/32 v6, 0x14997000

    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 2300
    iget-object v0, p0, Ldfw;->a:Ldfv;

    iget-object v0, v0, Ldfv;->a:Ldfq;

    .line 3055
    iget-object v0, v0, Ldfq;->b:Lbfd;

    .line 3180
    new-instance v1, Lehb;

    invoke-direct {v1}, Lehb;-><init>()V

    .line 3182
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lehb;->c:J

    .line 3183
    const-wide/32 v2, 0x36ee80

    iput-wide v2, v1, Lehb;->d:J

    .line 3184
    const-wide/32 v2, 0x1ee62800

    iput-wide v2, v1, Lehb;->e:J

    .line 3185
    const-wide/32 v2, 0xa4cb800

    iput-wide v2, v1, Lehb;->f:J

    .line 3186
    iput v4, v1, Lehb;->g:I

    .line 3187
    iput v5, v1, Lehb;->i:I

    .line 3188
    iput-wide v6, v1, Lehb;->j:J

    .line 3189
    iput v4, v1, Lehb;->k:I

    .line 3190
    iput v5, v1, Lehb;->l:I

    .line 3191
    iput-wide v6, v1, Lehb;->m:J

    .line 3192
    iput v4, v1, Lehb;->h:I

    .line 3194
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iput v0, v1, Lehb;->b:I

    .line 2314
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lehb;->a(Z)V

    .line 2315
    iget-object v0, p0, Ldfw;->a:Ldfv;

    iget-object v0, v0, Ldfv;->a:Ldfq;

    .line 4055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 2315
    invoke-virtual {v1, v0}, Lehb;->a(Landroid/content/Context;)V

    .line 2316
    const/4 v0, 0x0

    .line 277
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Ldfw;->a:Ldfv;

    iget-object v0, v0, Ldfv;->a:Ldfq;

    .line 2055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 1280
    const-string v1, "done cleaning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    return-void
.end method
