.class final Labw;
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
    .line 955
    iput-object p1, p0, Labw;->a:Labn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Labw;->a:Labn;

    invoke-virtual {v0}, Labn;->m()V

    .line 959
    return-void
.end method
