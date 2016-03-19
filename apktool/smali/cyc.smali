.class final Lcyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcyb;


# direct methods
.method constructor <init>(Lcyb;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcyc;->a:Lcyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 533
    sget-boolean v0, Lcyb;->n:Z

    .line 536
    iget-object v0, p0, Lcyc;->a:Lcyb;

    .line 1092
    invoke-virtual {v0}, Lcyb;->v()V

    .line 537
    return-void
.end method
