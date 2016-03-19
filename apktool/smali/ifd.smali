.class final Lifd;
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
.field final synthetic a:Lifb;


# direct methods
.method constructor <init>(Lifb;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lifd;->a:Lifb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lifd;->a:Lifb;

    .line 2012
    iget-object v0, v0, Lifb;->e:Ljava/lang/Runnable;

    .line 1066
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1067
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method
