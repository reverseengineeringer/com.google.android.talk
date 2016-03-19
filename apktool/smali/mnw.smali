.class public Lmnw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1023
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->a:Z

    .line 40
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/TraceEvent;->a()V

    .line 41
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2023
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->a:Z

    .line 44
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()V

    .line 45
    :cond_0
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lmnw;->a(Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lmnw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
