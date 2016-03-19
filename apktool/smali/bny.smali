.class final Lbny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 3348
    iput-object p1, p0, Lbny;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3351
    iget-object v0, p0, Lbny;->a:Lbng;

    .line 4285
    invoke-virtual {v0}, Lbng;->ac()V

    .line 3352
    return-void
.end method
