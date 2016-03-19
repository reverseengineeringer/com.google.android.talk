.class final Lbdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbds;


# direct methods
.method constructor <init>(Lbds;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lbdt;->a:Lbds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbdt;->a:Lbds;

    .line 1023
    invoke-virtual {v0}, Lbds;->a()V

    .line 49
    return-void
.end method
