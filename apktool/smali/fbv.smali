.class final Lfbv;
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
.field a:Lfbw;

.field final synthetic b:Lfbu;


# direct methods
.method constructor <init>(Lfbu;Lfbw;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lfbv;->b:Lfbu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 201
    iput-object p2, p0, Lfbv;->a:Lfbw;

    .line 202
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 2206
    iget-object v4, p0, Lfbv;->b:Lfbu;

    iget-object v5, p0, Lfbv;->a:Lfbw;

    invoke-static {}, Lexw;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 4177
    iget-object v0, v5, Lfbw;->a:Ljava/util/ArrayList;

    .line 3221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    .line 3222
    :goto_0
    if-ge v2, v7, :cond_1

    .line 5177
    iget-object v0, v5, Lfbw;->b:Ljava/util/ArrayList;

    .line 3223
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbx;

    .line 3224
    iget-object v8, v4, Lfbu;->a:Lexd;

    .line 6177
    iget-object v1, v5, Lfbw;->a:Ljava/util/ArrayList;

    .line 3226
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 7043
    invoke-static {v1, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 7076
    iget v9, v0, Lfbx;->a:I

    .line 8076
    iget v10, v0, Lfbx;->b:I

    .line 3225
    invoke-virtual {v8, v1, v6, v9, v10}, Lexd;->a(ILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3231
    if-eqz v1, :cond_0

    .line 3232
    invoke-virtual {v0, v1}, Lfbx;->a(Landroid/graphics/Bitmap;)V

    .line 3222
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2207
    :cond_1
    const/4 v0, 0x0

    .line 197
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lfbv;->a:Lfbw;

    .line 2177
    iget-object v0, v0, Lfbw;->c:Ljava/lang/ref/WeakReference;

    .line 1212
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1213
    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 197
    :cond_0
    return-void
.end method
