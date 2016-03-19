.class public final Lcee;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lawk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcee;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcee;->b:Landroid/widget/TextView;

    .line 28
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2032
    new-instance v0, Lawk;

    iget-object v1, p0, Lcee;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lawk;-><init>(Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lawk;

    .line 1037
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcee;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lcee;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method
