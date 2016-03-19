.class final Lhlz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhls;


# direct methods
.method constructor <init>(Lhls;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lhlz;->a:Lhls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lhnf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lhlz;->a:Lhls;

    iget-object v0, v0, Lhls;->a:Lhlx;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhlx;->a(Ljava/lang/Integer;)V

    .line 88
    :cond_0
    return-void
.end method
