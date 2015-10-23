package com.lnc.gms.common.converter;

import java.sql.Timestamp;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

public class TimestampConverter implements Converter<String, Timestamp> {

	@Override
	public Timestamp convert(String source) {

		if (StringUtils.isEmpty(source)) {
			return null;
		}

		return Timestamp.valueOf(source);
	}

}
