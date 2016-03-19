.class final Lahx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lahw;


# direct methods
.method constructor <init>(Lahw;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lahx;->a:Lahw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lahx;->a:Lahw;

    .line 1049
    iget-object v0, v0, Lahw;->a:Latm;

    .line 64
    iget-object v1, p0, Lahx;->a:Lahw;

    invoke-interface {v0, v1}, Latm;->a(Latn;)V

    .line 65
    return-void
.end method
