.class final Labv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Labn;


# direct methods
.method constructor <init>(Labn;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Labv;->a:Labn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 734
    iget-object v0, p0, Labv;->a:Labn;

    invoke-virtual {v0, v1, v1}, Labn;->a(ZZ)V

    .line 735
    return-void
.end method
