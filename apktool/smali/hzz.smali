.class final Lhzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhzy;


# direct methods
.method constructor <init>(Lhzy;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lhzz;->a:Lhzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lhzz;->a:Lhzy;

    .line 1037
    invoke-virtual {v0}, Lhzy;->h()V

    .line 269
    return-void
.end method
