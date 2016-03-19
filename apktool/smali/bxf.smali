.class final Lbxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbwy;


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lbxf;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lbxf;->a:Lbwy;

    .line 1077
    invoke-virtual {v0}, Lbwy;->k()V

    .line 738
    iget-object v0, p0, Lbxf;->a:Lbwy;

    .line 2077
    const/4 v1, 0x0

    iput-boolean v1, v0, Lbwy;->A:Z

    .line 739
    return-void
.end method
