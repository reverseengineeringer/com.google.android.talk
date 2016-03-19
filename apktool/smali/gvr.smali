.class final Lgvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laat;


# instance fields
.field final synthetic a:Lgvq;


# direct methods
.method constructor <init>(Lgvq;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lgvr;->a:Lgvq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 32
    return-void
.end method
