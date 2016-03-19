.class final Lhhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhhi;


# direct methods
.method constructor <init>(Lhhi;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lhhj;->a:Lhhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lhhj;->a:Lhhi;

    invoke-virtual {v0}, Lhhi;->a()V

    .line 170
    return-void
.end method
