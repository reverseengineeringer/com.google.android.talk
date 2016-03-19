.class final Lzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lza;


# direct methods
.method constructor <init>(Lza;)V
    .locals 0

    .prologue
    .line 1784
    iput-object p1, p0, Lzh;->a:Lza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lzh;->a:Lza;

    invoke-virtual {v0}, Lza;->m()V

    .line 1787
    return-void
.end method
