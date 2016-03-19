.class final Lbqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpz;


# direct methods
.method constructor <init>(Lbpz;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lbqb;->a:Lbpz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lbqb;->a:Lbpz;

    .line 1065
    iget-object v0, v0, Lbpz;->d:Lbqf;

    .line 284
    invoke-virtual {v0}, Lbqf;->a()V

    .line 285
    return-void
.end method
