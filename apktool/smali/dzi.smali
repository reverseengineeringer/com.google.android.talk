.class public final Ldzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 5318
    iput-object p1, p0, Ldzi;->a:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5322
    sget-object v0, Ldoo;->f:Ljava/lang/String;

    invoke-static {v0}, Lcvm;->a(Ljava/lang/String;)Lcvn;

    move-result-object v0

    .line 5324
    iget-object v1, p0, Ldzi;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcvn;->b(Ljava/lang/String;)V

    .line 5325
    return-void
.end method
