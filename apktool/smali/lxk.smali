.class final Llxk;
.super Llxh;
.source "SourceFile"


# static fields
.field static final a:Z

.field private static final b:Lsun/misc/Unsafe;

.field private static final c:J

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 965
    invoke-static {}, Llxk;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Llxk;->b:Lsun/misc/Unsafe;

    .line 966
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 967
    invoke-static {v0, v1}, Llxk;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 8579
    if-eqz v0, :cond_0

    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    if-nez v1, :cond_1

    :cond_0
    move-wide v0, v2

    .line 967
    :goto_0
    sput-wide v0, Llxk;->c:J

    .line 8587
    sget-object v0, Llxk;->b:Lsun/misc/Unsafe;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 968
    :goto_1
    sput v0, Llxk;->d:I

    .line 974
    sget-wide v0, Llxk;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    sget v0, Llxk;->d:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Llxk;->a:Z

    return-void

    .line 8579
    :cond_1
    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_0

    .line 8587
    :cond_2
    sget-object v0, Llxk;->b:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    goto :goto_1

    .line 974
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0}, Llxh;-><init>()V

    return-void
.end method

.method private static a([BIJI)I
    .locals 4

    .prologue
    .line 1522
    packed-switch p4, :pswitch_data_0

    .line 1534
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4052
    :pswitch_0
    invoke-static {p1}, Llxg;->a(I)I

    move-result v0

    .line 1530
    :goto_0
    return v0

    .line 1527
    :pswitch_1
    sget-object v0, Llxk;->b:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    .line 5052
    invoke-static {p1, v0}, Llxg;->a(II)I

    move-result v0

    goto :goto_0

    .line 1530
    :pswitch_2
    sget-object v0, Llxk;->b:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    .line 1531
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    .line 6052
    invoke-static {p1, v0, v1}, Llxg;->a(III)I

    move-result v0

    goto :goto_0

    .line 1522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a([BJI)I
    .locals 9

    .prologue
    .line 3311
    const/16 v0, 0x10

    if-ge p3, v0, :cond_1

    .line 3313
    const/4 v0, 0x0

    .line 1370
    :goto_0
    sub-int v1, p3, v0

    .line 1371
    int-to-long v2, v0

    add-long/2addr v2, p1

    move v0, v1

    .line 1377
    :cond_0
    const/4 v1, 0x0

    move-wide v4, v2

    .line 1378
    :goto_1
    if-lez v0, :cond_6

    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, p0, v4, v5}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    if-ltz v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    move-wide v4, v2

    goto :goto_1

    .line 3321
    :cond_1
    long-to-int v0, p1

    and-int/lit8 v1, v0, 0x7

    move v0, v1

    move-wide v2, p1

    .line 3322
    :goto_2
    if-lez v0, :cond_3

    .line 3323
    sget-object v6, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {v6, p0, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    if-gez v2, :cond_2

    .line 3324
    sub-int v0, v1, v0

    goto :goto_0

    .line 3322
    :cond_2
    add-int/lit8 v0, v0, -0x1

    move-wide v2, v4

    goto :goto_2

    .line 3331
    :cond_3
    sub-int v0, p3, v1

    .line 3332
    :goto_3
    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide v6, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 3333
    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x8

    goto :goto_3

    .line 3334
    :cond_4
    sub-int v0, p3, v0

    goto :goto_0

    :cond_5
    move-wide v4, v2

    .line 1380
    :cond_6
    if-nez v0, :cond_7

    .line 1381
    const/4 v0, 0x0

    .line 1437
    :goto_4
    return v0

    .line 1383
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 1386
    const/16 v2, -0x20

    if-ge v1, v2, :cond_a

    .line 1388
    if-nez v0, :cond_8

    move v0, v1

    .line 1390
    goto :goto_4

    .line 1392
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 1396
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_9

    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    .line 1397
    invoke-virtual {v1, p0, v4, v5}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    const/16 v4, -0x41

    if-le v1, v4, :cond_0

    .line 1398
    :cond_9
    const/4 v0, -0x1

    goto :goto_4

    .line 1400
    :cond_a
    const/16 v2, -0x10

    if-ge v1, v2, :cond_f

    .line 1402
    const/4 v2, 0x2

    if-ge v0, v2, :cond_b

    .line 1404
    invoke-static {p0, v1, v4, v5, v0}, Llxk;->a([BIJI)I

    move-result v0

    goto :goto_4

    .line 1406
    :cond_b
    add-int/lit8 v0, v0, -0x2

    .line 1409
    sget-object v2, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {v2, p0, v4, v5}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    const/16 v3, -0x41

    if-gt v2, v3, :cond_e

    const/16 v3, -0x20

    if-ne v1, v3, :cond_c

    const/16 v3, -0x60

    if-lt v2, v3, :cond_e

    :cond_c
    const/16 v3, -0x13

    if-ne v1, v3, :cond_d

    const/16 v1, -0x60

    if-ge v2, v1, :cond_e

    :cond_d
    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v6

    .line 1415
    invoke-virtual {v1, p0, v6, v7}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    const/16 v4, -0x41

    if-le v1, v4, :cond_0

    .line 1416
    :cond_e
    const/4 v0, -0x1

    goto :goto_4

    .line 1420
    :cond_f
    const/4 v2, 0x3

    if-ge v0, v2, :cond_10

    .line 1422
    invoke-static {p0, v1, v4, v5, v0}, Llxk;->a([BIJI)I

    move-result v0

    goto :goto_4

    .line 1424
    :cond_10
    add-int/lit8 v0, v0, -0x3

    .line 1427
    sget-object v2, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {v2, p0, v4, v5}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    const/16 v3, -0x41

    if-gt v2, v3, :cond_11

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_11

    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long v4, v6, v2

    .line 1434
    invoke-virtual {v1, p0, v6, v7}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    const/16 v2, -0x41

    if-gt v1, v2, :cond_11

    sget-object v1, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    .line 1436
    invoke-virtual {v1, p0, v4, v5}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    const/16 v4, -0x41

    if-le v1, v4, :cond_0

    .line 1437
    :cond_11
    const/4 v0, -0x1

    goto/16 :goto_4
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1563
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1564
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 7052
    :goto_0
    sget-object v2, Llxg;->a:Ljava/util/logging/Logger;

    .line 1569
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "{0}.{1}: {2}"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1570
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object p1, v5, v7

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    const-string v1, "available"

    :goto_1
    aput-object v1, v5, v6

    .line 1569
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1571
    return-object v0

    .line 1567
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 1570
    :cond_0
    const-string v1, "unavailable"

    goto :goto_1
.end method

.method private static a()Lsun/misc/Unsafe;
    .locals 5

    .prologue
    .line 1602
    const/4 v1, 0x0

    .line 1604
    :try_start_0
    new-instance v0, Llxl;

    invoke-direct {v0}, Llxl;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 8052
    :goto_0
    sget-object v2, Llxg;->a:Ljava/util/logging/Logger;

    .line 1628
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "sun.misc.Unsafe: {}"

    if-eqz v0, :cond_0

    .line 1629
    const-string v1, "available"

    .line 1628
    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1630
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1629
    :cond_0
    const-string v1, "unavailable"

    goto :goto_1
.end method

.method static a(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lsun/misc/Unsafe;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1639
    const-string v0, "arrayBaseOffset"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1640
    const-string v0, "getByte"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1641
    const-string v0, "putByte"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1642
    const-string v0, "getLong"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1645
    const-string v0, "objectFieldOffset"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/reflect/Field;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1646
    const-string v0, "getByte"

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1647
    const-string v0, "getLong"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1648
    const-string v0, "putByte"

    new-array v1, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1649
    const-string v0, "getLong"

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1650
    return-void
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;[BII)I
    .locals 14

    .prologue
    .line 1176
    sget v2, Llxk;->d:I

    add-int v2, v2, p3

    int-to-long v4, v2

    .line 1177
    move/from16 v0, p4

    int-to-long v2, v0

    add-long v8, v4, v2

    .line 1178
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1179
    move/from16 v0, p4

    if-gt v3, v0, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    sub-int v2, v2, p4

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    .line 1181
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v3, v3, -0x1

    .line 1182
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p3, p4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x25

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Failed writing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1187
    :cond_1
    const/4 v2, 0x0

    .line 1188
    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v6, 0x80

    if-ge v10, v6, :cond_2

    .line 1189
    sget-object v11, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    int-to-byte v10, v10

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v4, v5, v10}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1188
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v6

    goto :goto_0

    .line 1191
    :cond_2
    if-ne v2, v3, :cond_d

    .line 1193
    sget v2, Llxk;->d:I

    int-to-long v2, v2

    sub-long v2, v4, v2

    long-to-int v2, v2

    .line 1232
    :goto_1
    return v2

    .line 1196
    :goto_2
    if-ge v2, v3, :cond_c

    .line 1197
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 1198
    const/16 v4, 0x80

    if-ge v10, v4, :cond_3

    cmp-long v4, v6, v8

    if-gez v4, :cond_3

    .line 1199
    sget-object v11, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    int-to-byte v10, v10

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v6, v7, v10}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1196
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-wide v6, v4

    goto :goto_2

    .line 1200
    :cond_3
    const/16 v4, 0x800

    if-ge v10, v4, :cond_4

    const-wide/16 v4, 0x2

    sub-long v4, v8, v4

    cmp-long v4, v6, v4

    if-gtz v4, :cond_4

    .line 1201
    sget-object v4, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long/2addr v12, v6

    ushr-int/lit8 v5, v10, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1202
    sget-object v6, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v12

    and-int/lit8 v7, v10, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v12, v13, v7}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    goto :goto_3

    .line 1203
    :cond_4
    const v4, 0xd800

    if-lt v10, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v10, :cond_6

    :cond_5
    const-wide/16 v4, 0x3

    sub-long v4, v8, v4

    cmp-long v4, v6, v4

    if-gtz v4, :cond_6

    .line 1205
    sget-object v4, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long/2addr v12, v6

    ushr-int/lit8 v5, v10, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1206
    sget-object v4, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v12

    ushr-int/lit8 v5, v10, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v12, v13, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1207
    sget-object v11, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v6, v7, v10}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    goto :goto_3

    .line 1208
    :cond_6
    const-wide/16 v4, 0x4

    sub-long v4, v8, v4

    cmp-long v4, v6, v4

    if-gtz v4, :cond_9

    .line 1212
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1213
    :cond_7
    new-instance v4, Llxj;

    add-int/lit8 v2, v2, -0x1

    .line 2210
    invoke-direct {v4, v2, v3}, Llxj;-><init>(II)V

    .line 1213
    throw v4

    .line 1215
    :cond_8
    invoke-static {v10, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v10

    .line 1216
    sget-object v4, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long/2addr v12, v6

    ushr-int/lit8 v5, v10, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1217
    sget-object v4, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v12

    ushr-int/lit8 v5, v10, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v12, v13, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1218
    sget-object v4, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long/2addr v12, v6

    ushr-int/lit8 v5, v10, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 1219
    sget-object v6, Llxk;->b:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v12

    and-int/lit8 v7, v10, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v12, v13, v7}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    goto/16 :goto_3

    .line 1221
    :cond_9
    const v4, 0xd800

    if-gt v4, v10, :cond_b

    const v4, 0xdfff

    if-gt v10, v4, :cond_b

    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_a

    add-int/lit8 v4, v2, 0x1

    .line 1222
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1224
    :cond_a
    new-instance v4, Llxj;

    .line 3210
    invoke-direct {v4, v2, v3}, Llxj;-><init>(II)V

    .line 1224
    throw v4

    .line 1227
    :cond_b
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1232
    :cond_c
    sget v2, Llxk;->d:I

    int-to-long v2, v2

    sub-long v2, v6, v2

    long-to-int v2, v2

    goto/16 :goto_1

    :cond_d
    move-wide v6, v4

    goto/16 :goto_2
.end method

.method a([BII)I
    .locals 5

    .prologue
    .line 986
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 987
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Array length=%d, index=%d, limit=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    .line 988
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_0
    sget v0, Llxk;->d:I

    add-int/2addr v0, p2

    int-to-long v0, v0

    .line 991
    sget v2, Llxk;->d:I

    add-int/2addr v2, p3

    int-to-long v2, v2

    .line 1075
    sub-long/2addr v2, v0

    long-to-int v2, v2

    invoke-static {p1, v0, v1, v2}, Llxk;->a([BJI)I

    move-result v0

    return v0
.end method
