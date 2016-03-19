.class final Ligu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Ligt;


# direct methods
.method constructor <init>(Ligt;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ligu;->a:Ligt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ligu;->a:Ligt;

    invoke-virtual {v0, p1}, Ligt;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
