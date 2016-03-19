.class final Lbdv;
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
.field final synthetic a:Lbdu;


# direct methods
.method constructor <init>(Lbdu;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lbdv;->a:Lbdu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lbdv;->a:Lbdu;

    iget-object v0, v0, Lbdu;->a:Lbds;

    .line 2023
    invoke-virtual {v0}, Lbds;->b()V

    .line 1064
    const/4 v0, 0x0

    .line 60
    return-object v0
.end method
