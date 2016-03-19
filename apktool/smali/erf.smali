.class final Lerf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lere;


# direct methods
.method constructor <init>(Lere;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lerf;->a:Lere;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lerf;->a:Lere;

    .line 1017
    invoke-virtual {v0}, Lere;->c()V

    .line 61
    return-void
.end method
